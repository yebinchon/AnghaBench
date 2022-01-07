
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isdnhdlc_vars {int bit_shift; scalar_t__ do_bitreverse; int cbin; int state; int hdlc_bits1; int crc; int shift_reg; int data_bits; int data_received; int dstpos; int ffvalue; int ffbit_shift; scalar_t__ do_adapt56; } ;




 int HDLC_FRAMING_ERROR ;




 int HDLC_LENGTH_ERROR ;

 int bitrev8 (int ) ;
 int check_frame (struct isdnhdlc_vars*) ;
 int crc_ccitt_byte (int,int) ;
 int handle_abort (struct isdnhdlc_vars*) ;
 int handle_fast_flag (struct isdnhdlc_vars*) ;

int isdnhdlc_decode(struct isdnhdlc_vars *hdlc, const u8 *src, int slen,
      int *count, u8 *dst, int dsize)
{
 int status = 0;

 static const unsigned char fast_flag[] = {
  0x00, 0x00, 0x00, 0x20, 0x30, 0x38, 0x3c, 0x3e, 0x3f
 };

 static const unsigned char fast_flag_value[] = {
  0x00, 0x7e, 0xfc, 0xf9, 0xf3, 0xe7, 0xcf, 0x9f, 0x3f
 };

 static const unsigned char fast_abort[] = {
  0x00, 0x00, 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff
 };
 *count = slen;

 while (slen > 0) {
  if (hdlc->bit_shift == 0) {

   if (hdlc->do_bitreverse == 0)
    hdlc->cbin = bitrev8(*src++);
   else
    hdlc->cbin = *src++;
   slen--;
   hdlc->bit_shift = 8;
   if (hdlc->do_adapt56)
    hdlc->bit_shift--;
  }

  switch (hdlc->state) {
  case 128:
   return 0;
  case 133:
   if (hdlc->cbin == 0xff) {
    hdlc->bit_shift = 0;
    break;
   }
   hdlc->state = 129;
   hdlc->hdlc_bits1 = 0;
   hdlc->bit_shift = 8;
   break;
  case 129:
   if (!(hdlc->cbin & 0x80)) {
    hdlc->state = 132;
    hdlc->hdlc_bits1 = 0;
   } else {
    if ((!hdlc->do_adapt56) &&
        (++hdlc->hdlc_bits1 >= 8) &&
        (hdlc->bit_shift == 1))
     hdlc->state = 133;
   }
   hdlc->cbin <<= 1;
   hdlc->bit_shift--;
   break;
  case 132:
   if (hdlc->cbin & 0x80) {
    hdlc->hdlc_bits1++;
    if (hdlc->hdlc_bits1 == 6)
     hdlc->state = 131;
   } else
    hdlc->hdlc_bits1 = 0;
   hdlc->cbin <<= 1;
   hdlc->bit_shift--;
   break;
  case 131:
   if (hdlc->cbin & 0x80) {
    hdlc->state = 129;
   } else {
    hdlc->state = 130;
    hdlc->crc = 0xffff;
    hdlc->shift_reg = 0;
    hdlc->hdlc_bits1 = 0;
    hdlc->data_bits = 0;
    hdlc->data_received = 0;
   }
   hdlc->cbin <<= 1;
   hdlc->bit_shift--;
   break;
  case 130:
   if (hdlc->cbin & 0x80) {
    hdlc->hdlc_bits1++;
    switch (hdlc->hdlc_bits1) {
    case 6:
     break;
    case 7:
     if (hdlc->data_received)

      status = -HDLC_FRAMING_ERROR;
     if (!hdlc->do_adapt56) {
      if (hdlc->cbin == fast_abort
          [hdlc->bit_shift + 1]) {
       hdlc->state =
        133;
       hdlc->bit_shift = 1;
       break;
      }
     } else
      hdlc->state = 129;
     break;
    default:
     hdlc->shift_reg >>= 1;
     hdlc->shift_reg |= 0x80;
     hdlc->data_bits++;
     break;
    }
   } else {
    switch (hdlc->hdlc_bits1) {
    case 5:
     break;
    case 6:
     if (hdlc->data_received)
      status = check_frame(hdlc);
     hdlc->crc = 0xffff;
     hdlc->shift_reg = 0;
     hdlc->data_bits = 0;
     if (!hdlc->do_adapt56)
      do { if (hdlc->cbin == fast_flag[hdlc->bit_shift]) { hdlc->ffvalue = fast_flag_value[hdlc->bit_shift]; hdlc->state = 134; hdlc->ffbit_shift = hdlc->bit_shift; hdlc->bit_shift = 1; } else { hdlc->state = 130; hdlc->data_received = 0; } } while (0);
     else {
      hdlc->state = 130;
      hdlc->data_received = 0;
     }
     break;
    default:
     hdlc->shift_reg >>= 1;
     hdlc->data_bits++;
     break;
    }
    hdlc->hdlc_bits1 = 0;
   }
   if (status) {
    hdlc->dstpos = 0;
    *count -= slen;
    hdlc->cbin <<= 1;
    hdlc->bit_shift--;
    return status;
   }
   if (hdlc->data_bits == 8) {
    hdlc->data_bits = 0;
    hdlc->data_received = 1;
    hdlc->crc = crc_ccitt_byte(hdlc->crc,
          hdlc->shift_reg);


    if (hdlc->dstpos < dsize)
     dst[hdlc->dstpos++] = hdlc->shift_reg;
    else {

     status = -HDLC_LENGTH_ERROR;
     hdlc->dstpos = 0;
    }
   }
   hdlc->cbin <<= 1;
   hdlc->bit_shift--;
   break;
  case 134:
   if (hdlc->cbin == hdlc->ffvalue) {
    hdlc->bit_shift = 0;
    break;
   } else {
    if (hdlc->cbin == 0xff) {
     hdlc->state = 133;
     hdlc->bit_shift = 0;
    } else if (hdlc->ffbit_shift == 8) {
     hdlc->state = 131;
     break;
    } else
     do { hdlc->shift_reg = fast_abort[hdlc->ffbit_shift - 1]; hdlc->hdlc_bits1 = hdlc->ffbit_shift - 2; if (hdlc->hdlc_bits1 < 0) hdlc->hdlc_bits1 = 0; hdlc->data_bits = hdlc->ffbit_shift - 1; hdlc->state = 130; hdlc->data_received = 0; } while (0);
   }
   break;
  default:
   break;
  }
 }
 *count -= slen;
 return 0;
}
