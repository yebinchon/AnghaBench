
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; struct cxd2880_tnrdmd* diver_sub; } ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int x_sleep_dvbt_demod_setting (struct cxd2880_tnrdmd*) ;

int cxd2880_tnrdmd_dvbt_sleep_setting(struct cxd2880_tnrdmd *tnr_dmd)
{
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 ret = x_sleep_dvbt_demod_setting(tnr_dmd);
 if (ret)
  return ret;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
  ret = x_sleep_dvbt_demod_setting(tnr_dmd->diver_sub);

 return ret;
}
