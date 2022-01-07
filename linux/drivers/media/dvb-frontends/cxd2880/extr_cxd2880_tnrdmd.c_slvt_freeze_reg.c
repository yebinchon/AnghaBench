
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ts_output_if; } ;
struct cxd2880_tnrdmd {TYPE_2__* io; TYPE_1__ create_param; } ;
struct TYPE_5__ {int (* read_regs ) (TYPE_2__*,int ,int,int *,int) ;int (* write_reg ) (TYPE_2__*,int ,int,int) ;} ;


 int CXD2880_IO_TGT_DMD ;



 int EINVAL ;
 int stub1 (TYPE_2__*,int ,int,int *,int) ;
 int stub2 (TYPE_2__*,int ,int,int) ;

int slvt_freeze_reg(struct cxd2880_tnrdmd *tnr_dmd)
{
 u8 data;
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 switch (tnr_dmd->create_param.ts_output_if) {
 case 129:
 case 130:

  ret = tnr_dmd->io->read_regs(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0x00, &data, 1);
  if (ret)
   return ret;

  break;
 case 128:
 default:
  break;
 }

 return tnr_dmd->io->write_reg(tnr_dmd->io,
          CXD2880_IO_TGT_DMD,
          0x01, 0x01);
}
