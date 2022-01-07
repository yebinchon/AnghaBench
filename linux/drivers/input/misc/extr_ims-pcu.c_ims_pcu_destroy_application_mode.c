
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ims_pcu {int setup_complete; scalar_t__ device_id; TYPE_1__* dev; scalar_t__ gamepad; } ;
struct TYPE_2__ {int kobj; } ;


 scalar_t__ IMS_PCU_PCU_B_DEVICE_ID ;
 int ims_pcu_destroy_backlight (struct ims_pcu*) ;
 int ims_pcu_destroy_buttons (struct ims_pcu*) ;
 int ims_pcu_destroy_gamepad (struct ims_pcu*) ;
 int ims_pcu_ofn_attr_group ;
 int mb () ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void ims_pcu_destroy_application_mode(struct ims_pcu *pcu)
{
 if (pcu->setup_complete) {
  pcu->setup_complete = 0;
  mb();

  if (pcu->gamepad)
   ims_pcu_destroy_gamepad(pcu);
  ims_pcu_destroy_buttons(pcu);
  ims_pcu_destroy_backlight(pcu);

  if (pcu->device_id != IMS_PCU_PCU_B_DEVICE_ID)
   sysfs_remove_group(&pcu->dev->kobj,
        &ims_pcu_ofn_attr_group);
 }
}
