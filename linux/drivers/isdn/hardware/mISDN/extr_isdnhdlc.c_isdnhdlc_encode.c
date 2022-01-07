
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct isdnhdlc_vars {int state; int bit_shift; int do_closing; int shift_reg; int data_received; int crc; scalar_t__ do_bitreverse; int ffvalue; int cbin; int data_bits; int hdlc_bits1; scalar_t__ do_adapt56; int dchannel; } ;
 void* bitrev8 (int) ;
 int crc_ccitt_byte (int,int) ;

int isdnhdlc_encode(struct isdnhdlc_vars *hdlc, const u8 *src, u16 slen,
      int *count, u8 *dst, int dsize)
{
 static const unsigned char xfast_flag_value[] = {
  0x7e, 0x3f, 0x9f, 0xcf, 0xe7, 0xf3, 0xf9, 0xfc, 0x7e
 };

 int len = 0;

 *count = slen;


 if ((slen == 1) && (hdlc->state == 132))
  hdlc->state = 137;
 while (dsize > 0) {
  if (hdlc->bit_shift == 0) {
   if (slen && !hdlc->do_closing) {
    hdlc->shift_reg = *src++;
    slen--;
    if (slen == 0)

     hdlc->do_closing = 1;
    hdlc->bit_shift = 8;
   } else {
    if (hdlc->state == 133) {
     if (hdlc->data_received) {
      hdlc->state = 135;
      hdlc->crc ^= 0xffff;
      hdlc->bit_shift = 8;
      hdlc->shift_reg =
       hdlc->crc & 0xff;
     } else if (!hdlc->do_adapt56)
      hdlc->state =
       132;
     else
      hdlc->state =
       140;
    }

   }
  }

  switch (hdlc->state) {
  case 128:
   while (dsize--)
    *dst++ = 0xff;
   return dsize;
  case 132:
   hdlc->do_closing = 0;
   if (slen == 0) {

    if (hdlc->do_bitreverse == 0)
     *dst++ = bitrev8(hdlc->ffvalue);
    else
     *dst++ = hdlc->ffvalue;
    len++;
    dsize--;
    break;
   }

  case 137:
   if (hdlc->bit_shift == 8) {
    hdlc->cbin = hdlc->ffvalue >>
     (8 - hdlc->data_bits);
    hdlc->state = 133;
    hdlc->crc = 0xffff;
    hdlc->hdlc_bits1 = 0;
    hdlc->data_received = 1;
   }
   break;
  case 140:
   hdlc->do_closing = 0;
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   hdlc->hdlc_bits1 = 0;
   hdlc->state = 139;
   break;
  case 139:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   hdlc->cbin++;
   if (++hdlc->hdlc_bits1 == 6)
    hdlc->state = 138;
   break;
  case 138:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (slen == 0) {
    hdlc->state = 140;
    break;
   }
   if (hdlc->bit_shift == 8) {
    hdlc->state = 133;
    hdlc->crc = 0xffff;
    hdlc->hdlc_bits1 = 0;
    hdlc->data_received = 1;
   }
   break;
  case 130:
   hdlc->data_received = 1;
   if (hdlc->data_bits == 8) {
    hdlc->state = 133;
    hdlc->crc = 0xffff;
    hdlc->hdlc_bits1 = 0;
    break;
   }
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (hdlc->shift_reg & 0x01)
    hdlc->cbin++;
   hdlc->shift_reg >>= 1;
   hdlc->bit_shift--;
   if (hdlc->bit_shift == 0) {
    hdlc->state = 133;
    hdlc->crc = 0xffff;
    hdlc->hdlc_bits1 = 0;
   }
   break;
  case 133:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (hdlc->hdlc_bits1 == 5) {
    hdlc->hdlc_bits1 = 0;
    break;
   }
   if (hdlc->bit_shift == 8)
    hdlc->crc = crc_ccitt_byte(hdlc->crc,
          hdlc->shift_reg);
   if (hdlc->shift_reg & 0x01) {
    hdlc->hdlc_bits1++;
    hdlc->cbin++;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   } else {
    hdlc->hdlc_bits1 = 0;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   }
   break;
  case 135:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (hdlc->hdlc_bits1 == 5) {
    hdlc->hdlc_bits1 = 0;
    break;
   }
   if (hdlc->shift_reg & 0x01) {
    hdlc->hdlc_bits1++;
    hdlc->cbin++;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   } else {
    hdlc->hdlc_bits1 = 0;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   }
   if (hdlc->bit_shift == 0) {
    hdlc->shift_reg = (hdlc->crc >> 8);
    hdlc->state = 134;
    hdlc->bit_shift = 8;
   }
   break;
  case 134:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (hdlc->hdlc_bits1 == 5) {
    hdlc->hdlc_bits1 = 0;
    break;
   }
   if (hdlc->shift_reg & 0x01) {
    hdlc->hdlc_bits1++;
    hdlc->cbin++;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   } else {
    hdlc->hdlc_bits1 = 0;
    hdlc->shift_reg >>= 1;
    hdlc->bit_shift--;
   }
   if (hdlc->bit_shift == 0) {
    hdlc->shift_reg = 0x7e;
    hdlc->state = 136;
    hdlc->bit_shift = 8;
   }
   break;
  case 136:
   hdlc->cbin <<= 1;
   hdlc->data_bits++;
   if (hdlc->hdlc_bits1 == 5) {
    hdlc->hdlc_bits1 = 0;
    break;
   }
   if (hdlc->shift_reg & 0x01)
    hdlc->cbin++;
   hdlc->shift_reg >>= 1;
   hdlc->bit_shift--;
   if (hdlc->bit_shift == 0) {
    hdlc->ffvalue =
     xfast_flag_value[hdlc->data_bits];
    if (hdlc->dchannel) {
     hdlc->ffvalue = 0x7e;
     hdlc->state = 129;
     hdlc->bit_shift = 8-hdlc->data_bits;
     if (hdlc->bit_shift == 0)
      hdlc->state =
       131;
    } else {
     if (!hdlc->do_adapt56) {
      hdlc->state =
       132;
      hdlc->data_received = 0;
     } else {
      hdlc->state = 140;
      hdlc->data_received = 0;
     }

     if (dsize > 1)
      dsize = 1;
    }
   }
   break;
  case 129:
   hdlc->do_closing = 0;
   hdlc->cbin <<= 1;
   hdlc->cbin++;
   hdlc->data_bits++;
   hdlc->bit_shift--;
   if (hdlc->bit_shift == 0) {
    hdlc->state = 131;
    hdlc->bit_shift = 0;
   }
   break;
  case 131:
   hdlc->do_closing = 0;
   hdlc->cbin = 0xff;
   hdlc->data_bits = 8;
   if (hdlc->bit_shift == 8) {
    hdlc->cbin = 0x7e;
    hdlc->state = 130;
   } else {

    if (hdlc->do_bitreverse == 0)
     *dst++ = bitrev8(hdlc->cbin);
    else
     *dst++ = hdlc->cbin;
    hdlc->bit_shift = 0;
    hdlc->data_bits = 0;
    len++;
    dsize = 0;
   }
   break;
  default:
   break;
  }
  if (hdlc->do_adapt56) {
   if (hdlc->data_bits == 7) {
    hdlc->cbin <<= 1;
    hdlc->cbin++;
    hdlc->data_bits++;
   }
  }
  if (hdlc->data_bits == 8) {

   if (hdlc->do_bitreverse == 0)
    *dst++ = bitrev8(hdlc->cbin);
   else
    *dst++ = hdlc->cbin;
   hdlc->data_bits = 0;
   len++;
   dsize--;
  }
 }
 *count -= slen;

 return len;
}
