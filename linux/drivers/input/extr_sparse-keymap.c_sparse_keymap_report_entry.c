
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int value; int code; } ;
struct key_entry {int type; TYPE_1__ sw; int keycode; int code; } ;
struct input_dev {int dummy; } ;


 int EV_MSC ;



 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_report_key (struct input_dev*,int ,unsigned int) ;
 int input_report_switch (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;

void sparse_keymap_report_entry(struct input_dev *dev, const struct key_entry *ke,
    unsigned int value, bool autorelease)
{
 switch (ke->type) {
 case 130:
  input_event(dev, EV_MSC, MSC_SCAN, ke->code);
  input_report_key(dev, ke->keycode, value);
  input_sync(dev);
  if (value && autorelease) {
   input_report_key(dev, ke->keycode, 0);
   input_sync(dev);
  }
  break;

 case 129:
  value = ke->sw.value;


 case 128:
  input_report_switch(dev, ke->sw.code, value);
  input_sync(dev);
  break;
 }
}
