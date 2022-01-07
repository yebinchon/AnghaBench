
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd_lna_thrs_tbl_cable {int dummy; } ;
struct cxd2880_tnrdmd_lna_thrs_tbl_air {int dummy; } ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; int diver_sub; } ;


 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 int EINVAL ;
 int cxd2880_tnrdmd_set_lna_thrs (int ,struct cxd2880_tnrdmd_lna_thrs_tbl_air*,struct cxd2880_tnrdmd_lna_thrs_tbl_cable*) ;

int cxd2880_tnrdmd_set_lna_thrs_sub(struct cxd2880_tnrdmd *tnr_dmd,
        struct
        cxd2880_tnrdmd_lna_thrs_tbl_air
        *tbl_air,
        struct cxd2880_tnrdmd_lna_thrs_tbl_cable
        *tbl_cable)
{
 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode != CXD2880_TNRDMD_DIVERMODE_MAIN)
  return -EINVAL;

 return cxd2880_tnrdmd_set_lna_thrs(tnr_dmd->diver_sub,
        tbl_air, tbl_cable);
}
