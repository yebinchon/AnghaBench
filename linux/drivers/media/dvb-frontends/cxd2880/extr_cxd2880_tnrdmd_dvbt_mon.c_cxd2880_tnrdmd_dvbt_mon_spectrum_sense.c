
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; scalar_t__ sys; scalar_t__ diver_mode; TYPE_1__* io; struct cxd2880_tnrdmd* diver_sub; } ;
typedef enum cxd2880_tnrdmd_spectrum_sense { ____Placeholder_cxd2880_tnrdmd_spectrum_sense } cxd2880_tnrdmd_spectrum_sense ;
typedef int data ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 scalar_t__ CXD2880_DTV_SYS_DVBT ;
 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 int CXD2880_TNRDMD_SPECTRUM_INV ;
 int CXD2880_TNRDMD_SPECTRUM_NORMAL ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 int EINVAL ;
 int is_tps_locked (struct cxd2880_tnrdmd*) ;
 int slvt_freeze_reg (struct cxd2880_tnrdmd*) ;
 int slvt_unfreeze_reg (struct cxd2880_tnrdmd*) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

int cxd2880_tnrdmd_dvbt_mon_spectrum_sense(struct cxd2880_tnrdmd
        *tnr_dmd,
         enum
         cxd2880_tnrdmd_spectrum_sense
         *sense)
{
 u8 data = 0;
 int ret;

 if (!tnr_dmd || !sense)
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
   ret = cxd2880_tnrdmd_dvbt_mon_spectrum_sense(tnr_dmd->diver_sub,
             sense);

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
         0x1c, &data, sizeof(data));
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);
  return ret;
 }

 slvt_unfreeze_reg(tnr_dmd);

 *sense =
     (data & 0x01) ? CXD2880_TNRDMD_SPECTRUM_INV :
     CXD2880_TNRDMD_SPECTRUM_NORMAL;

 return ret;
}
