
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu_buttons {int input; } ;
struct ims_pcu {struct ims_pcu_buttons buttons; } ;


 int input_unregister_device (int ) ;

__attribute__((used)) static void ims_pcu_destroy_buttons(struct ims_pcu *pcu)
{
 struct ims_pcu_buttons *buttons = &pcu->buttons;

 input_unregister_device(buttons->input);
}
