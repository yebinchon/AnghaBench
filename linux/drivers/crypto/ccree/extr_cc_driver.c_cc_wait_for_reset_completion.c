
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {scalar_t__ hw_rev; } ;


 unsigned int CC_HW_RESET_LOOP_COUNT ;
 scalar_t__ CC_HW_REV_712 ;
 unsigned int CC_NVM_IS_IDLE_MASK ;
 int CC_REG (int ) ;
 int NVM_IS_IDLE ;
 unsigned int cc_ioread (struct cc_drvdata*,int ) ;
 int schedule () ;

bool cc_wait_for_reset_completion(struct cc_drvdata *drvdata)
{
 unsigned int val;
 unsigned int i;


 if (drvdata->hw_rev <= CC_HW_REV_712)
  return 1;

 for (i = 0; i < CC_HW_RESET_LOOP_COUNT; i++) {



  val = cc_ioread(drvdata, CC_REG(NVM_IS_IDLE));
  if (val & CC_NVM_IS_IDLE_MASK) {

   return 1;
  }

  schedule();
 }

 return 0;
}
