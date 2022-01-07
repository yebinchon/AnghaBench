
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TMR_ABORT_TASK ;
 int TMR_ABORT_TASK_SET ;
 int TMR_CLEAR_ACA ;
 int TMR_CLEAR_TASK_SET ;
 int TMR_LUN_RESET ;

__attribute__((used)) static int srp_tmr_to_tcm(int fn)
{
 switch (fn) {
 case 132:
  return TMR_ABORT_TASK;
 case 131:
  return TMR_ABORT_TASK_SET;
 case 129:
  return TMR_CLEAR_TASK_SET;
 case 128:
  return TMR_LUN_RESET;
 case 130:
  return TMR_CLEAR_ACA;
 default:
  return -1;
 }
}
