
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd_lna_thrs_tbl_cable {int dummy; } ;
struct cxd2880_tnrdmd_lna_thrs_tbl_air {int dummy; } ;
struct cxd2880_tnrdmd {struct cxd2880_tnrdmd_lna_thrs_tbl_cable* lna_thrs_tbl_cable; struct cxd2880_tnrdmd_lna_thrs_tbl_air* lna_thrs_tbl_air; } ;


 int EINVAL ;

int cxd2880_tnrdmd_set_lna_thrs(struct cxd2880_tnrdmd *tnr_dmd,
    struct cxd2880_tnrdmd_lna_thrs_tbl_air
    *tbl_air,
    struct cxd2880_tnrdmd_lna_thrs_tbl_cable
    *tbl_cable)
{
 if (!tnr_dmd)
  return -EINVAL;

 tnr_dmd->lna_thrs_tbl_air = tbl_air;
 tnr_dmd->lna_thrs_tbl_cable = tbl_cable;

 return 0;
}
