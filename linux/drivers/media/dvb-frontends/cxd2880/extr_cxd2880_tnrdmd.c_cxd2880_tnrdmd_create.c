
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2880_tnrdmd_create_param {int dummy; } ;
struct cxd2880_tnrdmd {int srl_ts_clk_mod_cnts; int en_fef_intmtnt_base; int en_fef_intmtnt_lite; int cancel; int * lna_thrs_tbl_cable; int * lna_thrs_tbl_air; int * rf_lvl_cmpstn; int * diver_sub; int diver_mode; struct cxd2880_tnrdmd_create_param create_param; struct cxd2880_io* io; } ;
struct cxd2880_io {int dummy; } ;


 int CXD2880_TNRDMD_DIVERMODE_SINGLE ;
 int EINVAL ;
 int atomic_set (int *,int ) ;
 int memset (struct cxd2880_tnrdmd*,int ,int) ;

int cxd2880_tnrdmd_create(struct cxd2880_tnrdmd *tnr_dmd,
     struct cxd2880_io *io,
     struct cxd2880_tnrdmd_create_param
     *create_param)
{
 if (!tnr_dmd || !io || !create_param)
  return -EINVAL;

 memset(tnr_dmd, 0, sizeof(struct cxd2880_tnrdmd));

 tnr_dmd->io = io;
 tnr_dmd->create_param = *create_param;

 tnr_dmd->diver_mode = CXD2880_TNRDMD_DIVERMODE_SINGLE;
 tnr_dmd->diver_sub = ((void*)0);

 tnr_dmd->srl_ts_clk_mod_cnts = 1;
 tnr_dmd->en_fef_intmtnt_base = 1;
 tnr_dmd->en_fef_intmtnt_lite = 1;
 tnr_dmd->rf_lvl_cmpstn = ((void*)0);
 tnr_dmd->lna_thrs_tbl_air = ((void*)0);
 tnr_dmd->lna_thrs_tbl_cable = ((void*)0);
 atomic_set(&tnr_dmd->cancel, 0);

 return 0;
}
