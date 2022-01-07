
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; void* state; struct cxd2880_tnrdmd* diver_sub; } ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 void* CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int cxd2880_tnrdmd_check_internal_cpu_status (struct cxd2880_tnrdmd*,int *) ;
 int load_cfg_mem (struct cxd2880_tnrdmd*) ;
 int rf_init2 (struct cxd2880_tnrdmd*) ;

int cxd2880_tnrdmd_init2(struct cxd2880_tnrdmd *tnr_dmd)
{
 u8 cpu_task_completed;
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 ret = cxd2880_tnrdmd_check_internal_cpu_status(tnr_dmd,
           &cpu_task_completed);
 if (ret)
  return ret;

 if (!cpu_task_completed)
  return -EINVAL;

 ret = rf_init2(tnr_dmd);
 if (ret)
  return ret;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
  ret = rf_init2(tnr_dmd->diver_sub);
  if (ret)
   return ret;
 }

 ret = load_cfg_mem(tnr_dmd);
 if (ret)
  return ret;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
  ret = load_cfg_mem(tnr_dmd->diver_sub);
  if (ret)
   return ret;
 }

 tnr_dmd->state = CXD2880_TNRDMD_STATE_SLEEP;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
  tnr_dmd->diver_sub->state = CXD2880_TNRDMD_STATE_SLEEP;

 return ret;
}
