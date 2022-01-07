
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {int diver_mode; TYPE_1__* io; } ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* write_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 int CXD2880_IO_TGT_SYS ;



 int EINVAL ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

__attribute__((used)) static int p_init3(struct cxd2880_tnrdmd *tnr_dmd)
{
 u8 data[2] = { 0 };
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         0x00, 0x00);
 if (ret)
  return ret;

 switch (tnr_dmd->diver_mode) {
 case 129:
  data[0] = 0x00;
  break;
 case 130:
  data[0] = 0x03;
  break;
 case 128:
  data[0] = 0x02;
  break;
 default:
  return -EINVAL;
 }

 data[1] = 0x01;

 return tnr_dmd->io->write_regs(tnr_dmd->io,
           CXD2880_IO_TGT_SYS,
           0x1f, data, 2);
}
