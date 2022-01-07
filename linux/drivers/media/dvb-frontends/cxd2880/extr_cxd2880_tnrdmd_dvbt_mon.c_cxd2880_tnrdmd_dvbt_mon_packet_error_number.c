
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; scalar_t__ sys; TYPE_1__* io; } ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,int*,int) ;} ;


 scalar_t__ CXD2880_DTV_SYS_DVBT ;
 int CXD2880_IO_TGT_DMD ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 int EAGAIN ;
 int EINVAL ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int*,int) ;

int cxd2880_tnrdmd_dvbt_mon_packet_error_number(struct
      cxd2880_tnrdmd
      *tnr_dmd,
      u32 *pen)
{
 u8 rdata[3];
 int ret;

 if (!tnr_dmd || !pen)
  return -EINVAL;

 if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 if (tnr_dmd->sys != CXD2880_DTV_SYS_DVBT)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x00, 0x0d);
 if (ret)
  return ret;

 ret = tnr_dmd->io->read_regs(tnr_dmd->io,
         CXD2880_IO_TGT_DMD,
         0x26, rdata, 3);
 if (ret)
  return ret;

 if (!(rdata[0] & 0x01))
  return -EAGAIN;

 *pen = (rdata[1] << 8) | rdata[2];

 return ret;
}
