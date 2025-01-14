
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; scalar_t__ sys; scalar_t__ diver_mode; TYPE_1__* io; struct cxd2880_tnrdmd* diver_sub; } ;
typedef enum cxd2880_dvbt_mode { ____Placeholder_cxd2880_dvbt_mode } cxd2880_dvbt_mode ;
typedef enum cxd2880_dvbt_guard { ____Placeholder_cxd2880_dvbt_guard } cxd2880_dvbt_guard ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 scalar_t__ CXD2880_DTV_SYS_DVBT ;
 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 int EINVAL ;
 int is_tps_locked (struct cxd2880_tnrdmd*) ;
 int slvt_freeze_reg (struct cxd2880_tnrdmd*) ;
 int slvt_unfreeze_reg (struct cxd2880_tnrdmd*) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

int cxd2880_tnrdmd_dvbt_mon_mode_guard(struct cxd2880_tnrdmd
           *tnr_dmd,
           enum cxd2880_dvbt_mode
           *mode,
           enum cxd2880_dvbt_guard
           *guard)
{
 u8 rdata = 0x00;
 int ret;

 if (!tnr_dmd || !mode || !guard)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 if (tnr_dmd->sys != CXD2880_DTV_SYS_DVBT)
  return -EINVAL;

 ret = slvt_freeze_reg(tnr_dmd);
 if (ret)
  return ret;

 ret = is_tps_locked(tnr_dmd);
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);

  if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
   ret =
       cxd2880_tnrdmd_dvbt_mon_mode_guard(tnr_dmd->diver_sub,
              mode, guard);

  return ret;
 }

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x00, 0x0d);
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);
  return ret;
 }

 ret = tnr_dmd->io->read_regs(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x1b, &rdata, 1);
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);
  return ret;
 }

 slvt_unfreeze_reg(tnr_dmd);

 *mode = (enum cxd2880_dvbt_mode)((rdata >> 2) & 0x03);
 *guard = (enum cxd2880_dvbt_guard)(rdata & 0x03);

 return ret;
}
