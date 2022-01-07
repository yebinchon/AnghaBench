
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu_gamepad {int input; } ;
struct ims_pcu {struct ims_pcu_gamepad* gamepad; } ;


 int input_unregister_device (int ) ;
 int kfree (struct ims_pcu_gamepad*) ;

__attribute__((used)) static void ims_pcu_destroy_gamepad(struct ims_pcu *pcu)
{
 struct ims_pcu_gamepad *gamepad = pcu->gamepad;

 input_unregister_device(gamepad->input);
 kfree(gamepad);
}
