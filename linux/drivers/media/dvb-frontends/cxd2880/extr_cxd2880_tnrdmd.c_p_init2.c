
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int xosc_cap; int xosc_i; int xtal_share_type; } ;
struct cxd2880_tnrdmd {TYPE_2__* io; TYPE_1__ create_param; } ;
struct TYPE_5__ {int (* write_reg ) (TYPE_2__*,int ,int,int) ;int (* write_regs ) (TYPE_2__*,int ,int,int*,int) ;} ;


 int CXD2880_IO_TGT_SYS ;




 int EINVAL ;
 int stub1 (TYPE_2__*,int ,int,int) ;
 int stub2 (TYPE_2__*,int ,int,int*,int) ;

__attribute__((used)) static int p_init2(struct cxd2880_tnrdmd *tnr_dmd)
{
 u8 data[6] = { 0 };
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         0x00, 0x00);
 if (ret)
  return ret;
 data[0] = tnr_dmd->create_param.xosc_cap;
 data[1] = tnr_dmd->create_param.xosc_i;
 switch (tnr_dmd->create_param.xtal_share_type) {
 case 129:
  data[2] = 0x01;
  data[3] = 0x00;
  break;
 case 131:
  data[2] = 0x00;
  data[3] = 0x00;
  break;
 case 130:
  data[2] = 0x01;
  data[3] = 0x01;
  break;
 case 128:
  data[2] = 0x00;
  data[3] = 0x01;
  break;
 default:
  return -EINVAL;
 }
 data[4] = 0x06;
 data[5] = 0x00;

 return tnr_dmd->io->write_regs(tnr_dmd->io,
           CXD2880_IO_TGT_SYS,
           0x13, data, 6);
}
