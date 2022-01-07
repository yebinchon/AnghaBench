
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc_pad {int type; struct input_dev* dev; } ;
struct gc {struct gc_pad* pads; scalar_t__* pad_count; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int GC_MAX_DEVICES ;

 int GC_NES_LENGTH ;


 int GC_SNESMOUSE_LENGTH ;
 int GC_SNES_LENGTH ;
 int REL_X ;
 int REL_Y ;
 size_t* gc_nes_bytes ;
 int gc_nes_read_packet (struct gc*,int,unsigned char*) ;
 int * gc_snes_btn ;
 size_t* gc_snes_bytes ;
 int* gc_status_bit ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_nes_process_packet(struct gc *gc)
{
 unsigned char data[GC_SNESMOUSE_LENGTH];
 struct gc_pad *pad;
 struct input_dev *dev;
 int i, j, s, len;
 char x_rel, y_rel;

 len = gc->pad_count[128] ? GC_SNESMOUSE_LENGTH :
   (gc->pad_count[129] ? GC_SNES_LENGTH : GC_NES_LENGTH);

 gc_nes_read_packet(gc, len, data);

 for (i = 0; i < GC_MAX_DEVICES; i++) {

  pad = &gc->pads[i];
  dev = pad->dev;
  s = gc_status_bit[i];

  switch (pad->type) {

  case 130:

   input_report_abs(dev, ABS_X, !(s & data[6]) - !(s & data[7]));
   input_report_abs(dev, ABS_Y, !(s & data[4]) - !(s & data[5]));

   for (j = 0; j < 4; j++)
    input_report_key(dev, gc_snes_btn[j],
       s & data[gc_nes_bytes[j]]);
   input_sync(dev);
   break;

  case 129:

   input_report_abs(dev, ABS_X, !(s & data[6]) - !(s & data[7]));
   input_report_abs(dev, ABS_Y, !(s & data[4]) - !(s & data[5]));

   for (j = 0; j < 8; j++)
    input_report_key(dev, gc_snes_btn[j],
       s & data[gc_snes_bytes[j]]);
   input_sync(dev);
   break;

  case 128:
   if (!(s & data[12]) && !(s & data[13]) &&
       !(s & data[14]) && (s & data[15])) {
    input_report_key(dev, BTN_LEFT, s & data[9]);
    input_report_key(dev, BTN_RIGHT, s & data[8]);

    x_rel = y_rel = 0;
    for (j = 0; j < 7; j++) {
     x_rel <<= 1;
     if (data[25 + j] & s)
      x_rel |= 1;

     y_rel <<= 1;
     if (data[17 + j] & s)
      y_rel |= 1;
    }

    if (x_rel) {
     if (data[24] & s)
      x_rel = -x_rel;
     input_report_rel(dev, REL_X, x_rel);
    }

    if (y_rel) {
     if (data[16] & s)
      y_rel = -y_rel;
     input_report_rel(dev, REL_Y, y_rel);
    }

    input_sync(dev);
   }
   break;

  default:
   break;
  }
 }
}
