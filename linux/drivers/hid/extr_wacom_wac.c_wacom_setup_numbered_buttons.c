
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;


 int __set_bit (int,int ) ;
 int wacom_numbered_button_to_key (int) ;

__attribute__((used)) static void wacom_setup_numbered_buttons(struct input_dev *input_dev,
    int button_count)
{
 int i;

 for (i = 0; i < button_count; i++) {
  int key = wacom_numbered_button_to_key(i);

  if (key)
   __set_bit(key, input_dev->keybit);
 }
}
