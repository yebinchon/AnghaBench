
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; scalar_t__ sys; int diver_sub; } ;


 scalar_t__ CXD2880_DTV_SYS_DVBT ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 int EINVAL ;
 int cxd2880_tnrdmd_mon_rf_lvl (int ,int*) ;
 int dvbt_calc_ssi (struct cxd2880_tnrdmd*,int,int *) ;

int cxd2880_tnrdmd_dvbt_mon_ssi_sub(struct cxd2880_tnrdmd *tnr_dmd,
        u8 *ssi)
{
 int rf_lvl = 0;
 int ret;

 if (!tnr_dmd || !ssi)
  return -EINVAL;

 if (tnr_dmd->diver_mode != CXD2880_TNRDMD_DIVERMODE_MAIN)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 if (tnr_dmd->sys != CXD2880_DTV_SYS_DVBT)
  return -EINVAL;

 ret = cxd2880_tnrdmd_mon_rf_lvl(tnr_dmd->diver_sub, &rf_lvl);
 if (ret)
  return ret;

 return dvbt_calc_ssi(tnr_dmd, rf_lvl, ssi);
}
