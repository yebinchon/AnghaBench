
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; } ;


 int CXD2880_IO_TGT_SYS ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int cxd2880_tnrdmd_set_and_save_reg_bits (struct cxd2880_tnrdmd*,int ,int,int,int,int) ;

int cxd2880_tnrdmd_gpio_write(struct cxd2880_tnrdmd *tnr_dmd,
         u8 id, u8 value)
{
 if (!tnr_dmd)
  return -EINVAL;

 if (id > 2)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 return cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
          CXD2880_IO_TGT_SYS,
          0x00, 0x46,
          value ? (1 << id) : 0,
          1 << id);
}
