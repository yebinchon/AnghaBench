
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int cxd2880_tnrdmd_dvbt_mon_sync_stat (struct cxd2880_tnrdmd*,int*,int*,int*) ;

__attribute__((used)) static int is_tps_locked(struct cxd2880_tnrdmd *tnr_dmd)
{
 u8 sync = 0;
 u8 tslock = 0;
 u8 early_unlock = 0;
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 ret =
     cxd2880_tnrdmd_dvbt_mon_sync_stat(tnr_dmd, &sync, &tslock,
           &early_unlock);
 if (ret)
  return ret;

 if (sync != 6)
  return -EAGAIN;

 return 0;
}
