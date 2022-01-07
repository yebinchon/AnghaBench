
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; scalar_t__ diver_mode; struct cxd2880_tnrdmd* diver_sub; int scan_mode; } ;
typedef enum cxd2880_dtv_sys { ____Placeholder_cxd2880_dtv_sys } cxd2880_dtv_sys ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;

int cxd2880_tnrdmd_set_scan_mode(struct cxd2880_tnrdmd *tnr_dmd,
     enum cxd2880_dtv_sys sys,
     u8 scan_mode_end)
{
 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 tnr_dmd->scan_mode = scan_mode_end;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
  return cxd2880_tnrdmd_set_scan_mode(tnr_dmd->diver_sub, sys,
          scan_mode_end);
 else
  return 0;
}
