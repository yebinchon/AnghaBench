
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc_pad {int type; struct input_dev* dev; } ;
struct gc {struct gc_pad* pads; scalar_t__* pad_count; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_THUMB ;
 int BTN_TRIGGER ;
 int GC_MAX_DEVICES ;


 int GC_MULTI2_LENGTH ;
 int GC_MULTI_LENGTH ;
 int gc_multi_read_packet (struct gc*,int,unsigned char*) ;
 int* gc_status_bit ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void gc_multi_process_packet(struct gc *gc)
{
 unsigned char data[GC_MULTI2_LENGTH];
 int data_len = gc->pad_count[128] ? GC_MULTI2_LENGTH : GC_MULTI_LENGTH;
 struct gc_pad *pad;
 struct input_dev *dev;
 int i, s;

 gc_multi_read_packet(gc, data_len, data);

 for (i = 0; i < GC_MAX_DEVICES; i++) {
  pad = &gc->pads[i];
  dev = pad->dev;
  s = gc_status_bit[i];

  switch (pad->type) {
  case 128:
   input_report_key(dev, BTN_THUMB, s & data[5]);


  case 129:
   input_report_abs(dev, ABS_X,
      !(s & data[2]) - !(s & data[3]));
   input_report_abs(dev, ABS_Y,
      !(s & data[0]) - !(s & data[1]));
   input_report_key(dev, BTN_TRIGGER, s & data[4]);
   input_sync(dev);
   break;

  default:
   break;
  }
 }
}
