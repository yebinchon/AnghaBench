
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walkera_dev {int* buf; int input_dev; } ;


 int ABS_MISC ;
 int ABS_RUDDER ;
 int ABS_THROTTLE ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_GEAR_DOWN ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int pr_debug (char*,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static inline void walkera0701_parse_frame(struct walkera_dev *w)
{
 int i;
 int val1, val2, val3, val4, val5, val6, val7, val8;
 int magic, magic_bit;
 int crc1, crc2;

 for (crc1 = crc2 = i = 0; i < 10; i++) {
  crc1 += w->buf[i] & 7;
  crc2 += (w->buf[i] & 8) >> 3;
 }
 if ((w->buf[10] & 7) != (crc1 & 7))
  return;
 if (((w->buf[10] & 8) >> 3) != (((crc1 >> 3) + crc2) & 1))
  return;
 for (crc1 = crc2 = 0, i = 11; i < 23; i++) {
  crc1 += w->buf[i] & 7;
  crc2 += (w->buf[i] & 8) >> 3;
 }
 if ((w->buf[23] & 7) != (crc1 & 7))
  return;
 if (((w->buf[23] & 8) >> 3) != (((crc1 >> 3) + crc2) & 1))
  return;
 val1 = ((w->buf[0] & 7) * 256 + w->buf[1] * 16 + w->buf[2]) >> 2;
 val1 *= ((w->buf[0] >> 2) & 2) - 1;
 val2 = (w->buf[2] & 1) << 8 | (w->buf[3] << 4) | w->buf[4];
 val2 *= (w->buf[2] & 2) - 1;
 val3 = ((w->buf[5] & 7) * 256 + w->buf[6] * 16 + w->buf[7]) >> 2;
 val3 *= ((w->buf[5] >> 2) & 2) - 1;
 val4 = (w->buf[7] & 1) << 8 | (w->buf[8] << 4) | w->buf[9];
 val4 *= (w->buf[7] & 2) - 1;
 val5 = ((w->buf[11] & 7) * 256 + w->buf[12] * 16 + w->buf[13]) >> 2;
 val5 *= ((w->buf[11] >> 2) & 2) - 1;
 val6 = (w->buf[13] & 1) << 8 | (w->buf[14] << 4) | w->buf[15];
 val6 *= (w->buf[13] & 2) - 1;
 val7 = ((w->buf[16] & 7) * 256 + w->buf[17] * 16 + w->buf[18]) >> 2;
 val7 *= ((w->buf[16] >> 2) & 2) - 1;
 val8 = (w->buf[18] & 1) << 8 | (w->buf[19] << 4) | w->buf[20];
 val8 *= (w->buf[18] & 2) - 1;

 magic = (w->buf[21] << 4) | w->buf[22];
 magic_bit = (w->buf[24] & 8) >> 3;
 pr_debug("%4d %4d %4d %4d  %4d %4d %4d %4d (magic %2x %d)\n",
   val1, val2, val3, val4, val5, val6, val7, val8,
   magic, magic_bit);

 input_report_abs(w->input_dev, ABS_X, val2);
 input_report_abs(w->input_dev, ABS_Y, val1);
 input_report_abs(w->input_dev, ABS_Z, val6);
 input_report_abs(w->input_dev, ABS_THROTTLE, val3);
 input_report_abs(w->input_dev, ABS_RUDDER, val4);
 input_report_abs(w->input_dev, ABS_MISC, val7);
 input_report_key(w->input_dev, BTN_GEAR_DOWN, val5 > 0);
}
