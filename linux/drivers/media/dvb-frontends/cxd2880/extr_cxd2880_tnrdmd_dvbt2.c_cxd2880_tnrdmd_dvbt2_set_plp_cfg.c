
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; TYPE_1__* io; } ;
struct TYPE_4__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;} ;


 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int) ;
 int stub3 (TYPE_1__*,int ,int,int) ;

int cxd2880_tnrdmd_dvbt2_set_plp_cfg(struct cxd2880_tnrdmd
         *tnr_dmd, u8 auto_plp,
         u8 plp_id)
{
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x00, 0x23);
 if (ret)
  return ret;

 if (!auto_plp) {
  ret = tnr_dmd->io->write_reg(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0xaf, plp_id);
  if (ret)
   return ret;
 }

 return tnr_dmd->io->write_reg(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0xad, auto_plp ? 0x00 : 0x01);
}
