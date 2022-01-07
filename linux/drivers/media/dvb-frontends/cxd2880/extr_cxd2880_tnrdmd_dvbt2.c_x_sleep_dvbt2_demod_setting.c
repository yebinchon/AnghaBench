
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; TYPE_1__* io; } ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* write_regs ) (TYPE_1__*,int ,int,int const*,int) ;} ;


 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 int EINVAL ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int const*,int) ;

__attribute__((used)) static int x_sleep_dvbt2_demod_setting(struct cxd2880_tnrdmd
           *tnr_dmd)
{
 static const u8 difint_clip[] = {
  0, 1, 0, 2, 0, 4, 0, 8, 0, 16, 0, 32
 };
 int ret = 0;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
  ret = tnr_dmd->io->write_reg(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0x00, 0x1d);
  if (ret)
   return ret;

  ret = tnr_dmd->io->write_regs(tnr_dmd->io,
           CXD2880_IO_TGT_DMD,
           0x47, difint_clip, 12);
 }

 return ret;
}
