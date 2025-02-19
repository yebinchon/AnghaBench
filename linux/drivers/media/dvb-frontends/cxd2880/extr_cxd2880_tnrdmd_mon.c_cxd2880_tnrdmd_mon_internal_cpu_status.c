
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct cxd2880_tnrdmd {TYPE_1__* io; } ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 int CXD2880_IO_TGT_SYS ;
 int EINVAL ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

int cxd2880_tnrdmd_mon_internal_cpu_status(struct cxd2880_tnrdmd
        *tnr_dmd, u16 *status)
{
 u8 data[2] = { 0 };
 int ret;

 if (!tnr_dmd || !status)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         0x00, 0x1a);
 if (ret)
  return ret;
 ret = tnr_dmd->io->read_regs(tnr_dmd->io,
         CXD2880_IO_TGT_SYS,
         0x15, data, 2);
 if (ret)
  return ret;

 *status = (data[0] << 8) | data[1];

 return 0;
}
