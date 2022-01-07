
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; int clk_mode; struct cxd2880_tnrdmd* diver_sub; } ;
struct cxd2880_dvbt_tune_param {int profile; int bandwidth; int center_freq_khz; } ;


 int CXD2880_DTV_SYS_DVBT ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int cxd2880_tnrdmd_common_tune_setting1 (struct cxd2880_tnrdmd*,int ,int ,int ,int ,int ) ;
 int dvbt_set_profile (struct cxd2880_tnrdmd*,int ) ;
 int x_tune_dvbt_demod_setting (struct cxd2880_tnrdmd*,int ,int ) ;

int cxd2880_tnrdmd_dvbt_tune1(struct cxd2880_tnrdmd *tnr_dmd,
         struct cxd2880_dvbt_tune_param
         *tune_param)
{
 int ret;

 if (!tnr_dmd || !tune_param)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 ret =
     cxd2880_tnrdmd_common_tune_setting1(tnr_dmd, CXD2880_DTV_SYS_DVBT,
      tune_param->center_freq_khz,
      tune_param->bandwidth, 0, 0);
 if (ret)
  return ret;

 ret =
     x_tune_dvbt_demod_setting(tnr_dmd, tune_param->bandwidth,
          tnr_dmd->clk_mode);
 if (ret)
  return ret;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
  ret =
      x_tune_dvbt_demod_setting(tnr_dmd->diver_sub,
           tune_param->bandwidth,
           tnr_dmd->diver_sub->clk_mode);
  if (ret)
   return ret;
 }

 return dvbt_set_profile(tnr_dmd, tune_param->profile);
}
