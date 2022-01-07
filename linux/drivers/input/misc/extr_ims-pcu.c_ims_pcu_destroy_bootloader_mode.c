
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int async_firmware_done; } ;


 int wait_for_completion (int *) ;

__attribute__((used)) static void ims_pcu_destroy_bootloader_mode(struct ims_pcu *pcu)
{

 wait_for_completion(&pcu->async_firmware_done);
}
