
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; int diver_sub; } ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 int EINVAL ;
 int cxd2880_tnrdmd_dvbt2_mon_sync_stat (int ,int *,int *,int *) ;

int cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(struct cxd2880_tnrdmd
        *tnr_dmd,
        u8 *sync_stat,
        u8 *unlock_detected)
{
 u8 ts_lock_stat = 0;

 if (!tnr_dmd || !sync_stat || !unlock_detected)
  return -EINVAL;

 if (tnr_dmd->diver_mode != CXD2880_TNRDMD_DIVERMODE_MAIN)
  return -EINVAL;

 return cxd2880_tnrdmd_dvbt2_mon_sync_stat(tnr_dmd->diver_sub,
        sync_stat,
        &ts_lock_stat,
        unlock_detected);
}
