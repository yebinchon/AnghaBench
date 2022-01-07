
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc_pad {int type; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 int GC_DDR ;




 int * gc_psx_abs ;
 int * gc_psx_btn ;
 int * gc_psx_ddr_btn ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_psx_report_one(struct gc_pad *pad, unsigned char psx_type,
         unsigned char *data)
{
 struct input_dev *dev = pad->dev;
 int i;

 switch (psx_type) {

 case 128:

  input_report_key(dev, BTN_THUMBL, ~data[0] & 0x04);
  input_report_key(dev, BTN_THUMBR, ~data[0] & 0x02);


 case 130:
 case 131:

  if (pad->type == GC_DDR) {
   for (i = 0; i < 4; i++)
    input_report_key(dev, gc_psx_ddr_btn[i],
       ~data[0] & (0x10 << i));
  } else {
   for (i = 0; i < 4; i++)
    input_report_abs(dev, gc_psx_abs[i + 2],
       data[i + 2]);

   input_report_abs(dev, ABS_X,
    !!(data[0] & 0x80) * 128 + !(data[0] & 0x20) * 127);
   input_report_abs(dev, ABS_Y,
    !!(data[0] & 0x10) * 128 + !(data[0] & 0x40) * 127);
  }

  for (i = 0; i < 8; i++)
   input_report_key(dev, gc_psx_btn[i], ~data[1] & (1 << i));

  input_report_key(dev, BTN_START, ~data[0] & 0x08);
  input_report_key(dev, BTN_SELECT, ~data[0] & 0x01);

  input_sync(dev);

  break;

 case 129:

  if (pad->type == GC_DDR) {
   for (i = 0; i < 4; i++)
    input_report_key(dev, gc_psx_ddr_btn[i],
       ~data[0] & (0x10 << i));
  } else {
   input_report_abs(dev, ABS_X,
    !!(data[0] & 0x80) * 128 + !(data[0] & 0x20) * 127);
   input_report_abs(dev, ABS_Y,
    !!(data[0] & 0x10) * 128 + !(data[0] & 0x40) * 127);
  }

  for (i = 0; i < 8; i++)
   input_report_key(dev, gc_psx_btn[i], ~data[1] & (1 << i));

  input_report_key(dev, BTN_START, ~data[0] & 0x08);
  input_report_key(dev, BTN_SELECT, ~data[0] & 0x01);

  input_sync(dev);

  break;

 default:
  break;
 }
}
