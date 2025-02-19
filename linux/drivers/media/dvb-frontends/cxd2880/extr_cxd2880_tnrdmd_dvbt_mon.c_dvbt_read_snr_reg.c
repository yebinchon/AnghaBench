
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct cxd2880_tnrdmd {TYPE_1__* io; } ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 int CXD2880_IO_TGT_DMD ;
 int EINVAL ;
 int is_tps_locked (struct cxd2880_tnrdmd*) ;
 int slvt_freeze_reg (struct cxd2880_tnrdmd*) ;
 int slvt_unfreeze_reg (struct cxd2880_tnrdmd*) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

__attribute__((used)) static int dvbt_read_snr_reg(struct cxd2880_tnrdmd *tnr_dmd,
        u16 *reg_value)
{
 u8 rdata[2];
 int ret;

 if (!tnr_dmd || !reg_value)
  return -EINVAL;

 ret = slvt_freeze_reg(tnr_dmd);
 if (ret)
  return ret;

 ret = is_tps_locked(tnr_dmd);
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);
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
         0x13, rdata, 2);
 if (ret) {
  slvt_unfreeze_reg(tnr_dmd);
  return ret;
 }

 slvt_unfreeze_reg(tnr_dmd);

 *reg_value = (rdata[0] << 8) | rdata[1];

 return ret;
}
