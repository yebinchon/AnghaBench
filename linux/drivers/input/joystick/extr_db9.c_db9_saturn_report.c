
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int BTN_A ;
 int BTN_B ;
 int BTN_C ;
 int BTN_START ;
 int * db9_abs ;
 int * db9_cd32_btn ;
 int * db9_saturn_byte ;
 unsigned char* db9_saturn_mask ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;

__attribute__((used)) static int db9_saturn_report(unsigned char id, unsigned char data[60], struct input_dev *devs[], int n, int max_pads)
{
 struct input_dev *dev;
 int tmp, i, j;

 tmp = (id == 0x41) ? 60 : 10;
 for (j = 0; j < tmp && n < max_pads; j += 10, n++) {
  dev = devs[n];
  switch (data[j]) {
  case 0x16:
   input_report_abs(dev, db9_abs[5], data[j + 6]);

  case 0x15:
   input_report_abs(dev, db9_abs[3], data[j + 4]);
   input_report_abs(dev, db9_abs[4], data[j + 5]);

  case 0x13:
   input_report_abs(dev, db9_abs[2], data[j + 3]);

  case 0x34:
  case 0x02:
   input_report_abs(dev, db9_abs[0], !(data[j + 1] & 128) - !(data[j + 1] & 64));
   input_report_abs(dev, db9_abs[1], !(data[j + 1] & 32) - !(data[j + 1] & 16));
   for (i = 0; i < 9; i++)
    input_report_key(dev, db9_cd32_btn[i], ~data[j + db9_saturn_byte[i]] & db9_saturn_mask[i]);
   break;
  case 0x19:
   input_report_abs(dev, db9_abs[0], !(data[j + 1] & 128) - !(data[j + 1] & 64));
   input_report_abs(dev, db9_abs[1], !(data[j + 1] & 32) - !(data[j + 1] & 16));
   for (i = 0; i < 9; i++)
    input_report_key(dev, db9_cd32_btn[i], ~data[j + db9_saturn_byte[i]] & db9_saturn_mask[i]);
   input_report_abs(dev, db9_abs[2], data[j + 3]);
   input_report_abs(dev, db9_abs[3], data[j + 4]);
   input_report_abs(dev, db9_abs[4], data[j + 5]);




   input_report_abs(dev, db9_abs[6], data[j + 7]);
   input_report_abs(dev, db9_abs[7], data[j + 8]);
   input_report_abs(dev, db9_abs[5], data[j + 9]);
   break;
  case 0xd3:
   input_report_key(dev, BTN_A, data[j + 3] & 0x80);
   input_report_abs(dev, db9_abs[2], data[j + 3] & 0x7f);
   break;
  case 0xe3:
   input_report_key(dev, BTN_START, data[j + 1] & 0x08);
   input_report_key(dev, BTN_A, data[j + 1] & 0x04);
   input_report_key(dev, BTN_C, data[j + 1] & 0x02);
   input_report_key(dev, BTN_B, data[j + 1] & 0x01);
   input_report_abs(dev, db9_abs[2], data[j + 2] ^ 0x80);
   input_report_abs(dev, db9_abs[3], (0xff-(data[j + 3] ^ 0x80))+1);
   break;
  case 0xff:
  default:
   input_report_abs(dev, db9_abs[0], 0);
   input_report_abs(dev, db9_abs[1], 0);
   for (i = 0; i < 9; i++)
    input_report_key(dev, db9_cd32_btn[i], 0);
   break;
  }
 }
 return n;
}
