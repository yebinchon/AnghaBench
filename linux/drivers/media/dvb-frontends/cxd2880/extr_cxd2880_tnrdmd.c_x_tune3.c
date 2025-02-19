
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {TYPE_1__* io; } ;
typedef enum cxd2880_dtv_sys { ____Placeholder_cxd2880_dtv_sys } cxd2880_dtv_sys ;
typedef int data ;
struct TYPE_6__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* write_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 int ARRAY_SIZE (int ) ;
 int CXD2880_DTV_SYS_DVBT2 ;
 int CXD2880_IO_TGT_DMD ;
 int CXD2880_IO_TGT_SYS ;
 int EINVAL ;
 int cxd2880_io_write_multi_regs (TYPE_1__*,int ,int ,int ) ;
 int memset (int*,int,int) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;
 int stub3 (TYPE_1__*,int ,int,int) ;
 int stub4 (TYPE_1__*,int ,int,int) ;
 int x_tune3_seq ;

__attribute__((used)) static int x_tune3(struct cxd2880_tnrdmd *tnr_dmd,
     enum cxd2880_dtv_sys sys,
     u8 en_fef_intmtnt_ctrl)
{
 u8 data[6] = { 0 };
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 ret = cxd2880_io_write_multi_regs(tnr_dmd->io,
       CXD2880_IO_TGT_DMD,
       x_tune3_seq,
       ARRAY_SIZE(x_tune3_seq));
 if (ret)
  return ret;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         0x00, 0x10);
 if (ret)
  return ret;

 if (sys == CXD2880_DTV_SYS_DVBT2 && en_fef_intmtnt_ctrl)
  memset(data, 0x01, sizeof(data));
 else
  memset(data, 0x00, sizeof(data));

 ret = tnr_dmd->io->write_regs(tnr_dmd->io,
          CXD2880_IO_TGT_SYS,
          0xef, data, 6);
 if (ret)
  return ret;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x00, 0x2d);
 if (ret)
  return ret;
 if (sys == CXD2880_DTV_SYS_DVBT2 && en_fef_intmtnt_ctrl)
  data[0] = 0x00;
 else
  data[0] = 0x01;

 return tnr_dmd->io->write_reg(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0xb1, data[0]);
}
