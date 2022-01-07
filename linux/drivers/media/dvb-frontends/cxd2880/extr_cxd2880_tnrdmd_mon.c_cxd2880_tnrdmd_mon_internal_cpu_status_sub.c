
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; int diver_sub; } ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 int EINVAL ;
 int cxd2880_tnrdmd_mon_internal_cpu_status (int ,int *) ;

int cxd2880_tnrdmd_mon_internal_cpu_status_sub(struct
            cxd2880_tnrdmd
            *tnr_dmd,
            u16 *status)
{
 if (!tnr_dmd || !status)
  return -EINVAL;

 if (tnr_dmd->diver_mode != CXD2880_TNRDMD_DIVERMODE_MAIN)
  return -EINVAL;

 return cxd2880_tnrdmd_mon_internal_cpu_status(tnr_dmd->diver_sub,
            status);
}
