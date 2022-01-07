
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int dev; } ;


 int JUMP_TO_BTLDR ;
 int dev_err (int ,char*,int) ;
 int ims_pcu_execute_command (struct ims_pcu*,int ,int *,int ) ;

__attribute__((used)) static int ims_pcu_switch_to_bootloader(struct ims_pcu *pcu)
{
 int error;


 error = ims_pcu_execute_command(pcu, JUMP_TO_BTLDR, ((void*)0), 0);
 if (error) {
  dev_err(pcu->dev,
   "Failure when sending JUMP TO BOOLTLOADER command, error: %d\n",
   error);
  return error;
 }

 return 0;
}
