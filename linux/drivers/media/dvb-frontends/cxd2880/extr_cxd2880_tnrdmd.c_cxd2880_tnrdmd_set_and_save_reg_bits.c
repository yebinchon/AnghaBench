
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; TYPE_1__* io; } ;
typedef enum cxd2880_io_tgt { ____Placeholder_cxd2880_io_tgt } cxd2880_io_tgt ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int,int,int ) ;} ;


 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int cxd2880_io_set_reg_bits (TYPE_1__*,int,int ,int ,int ) ;
 int set_cfg_mem (struct cxd2880_tnrdmd*,int,int ,int ,int ,int ) ;
 int stub1 (TYPE_1__*,int,int,int ) ;

int cxd2880_tnrdmd_set_and_save_reg_bits(struct cxd2880_tnrdmd
      *tnr_dmd,
      enum cxd2880_io_tgt tgt,
      u8 bank, u8 address,
      u8 value, u8 bit_mask)
{
 int ret;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 ret = tnr_dmd->io->write_reg(tnr_dmd->io, tgt, 0x00, bank);
 if (ret)
  return ret;

 ret = cxd2880_io_set_reg_bits(tnr_dmd->io,
          tgt, address, value, bit_mask);
 if (ret)
  return ret;

 return set_cfg_mem(tnr_dmd, tgt, bank, address, value, bit_mask);
}
