
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {scalar_t__ pad_input; scalar_t__ pen_input; int data; } ;


 int input_sync (scalar_t__) ;
 int memcpy (int ,unsigned char*,int) ;
 int wacom_intuos_irq (struct wacom_wac*) ;

__attribute__((used)) static void wacom_intuos_bt_process_data(struct wacom_wac *wacom,
  unsigned char *data)
{
 memcpy(wacom->data, data, 10);
 wacom_intuos_irq(wacom);

 input_sync(wacom->pen_input);
 if (wacom->pad_input)
  input_sync(wacom->pad_input);
}
