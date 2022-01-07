
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct wacom {TYPE_1__ led; } ;
struct input_dev {int dummy; } ;


 struct wacom* input_get_drvdata (struct input_dev*) ;
 int input_report_key (struct input_dev*,int,int) ;
 int wacom_numbered_button_to_key (int) ;
 int wacom_update_led (struct wacom*,int,int,int) ;

__attribute__((used)) static void wacom_report_numbered_buttons(struct input_dev *input_dev,
    int button_count, int mask)
{
 struct wacom *wacom = input_get_drvdata(input_dev);
 int i;

 for (i = 0; i < wacom->led.count; i++)
  wacom_update_led(wacom, button_count, mask, i);

 for (i = 0; i < button_count; i++) {
  int key = wacom_numbered_button_to_key(i);

  if (key)
   input_report_key(input_dev, key, mask & (1 << i));
 }
}
