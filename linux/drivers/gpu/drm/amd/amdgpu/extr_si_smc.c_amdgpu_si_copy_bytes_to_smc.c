
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct amdgpu_device {int smc_idx_lock; } ;


 int EINVAL ;
 int RREG32 (int ) ;
 int SMC_IND_DATA_0 ;
 int WREG32 (int ,int) ;
 int si_set_smc_sram_address (struct amdgpu_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int amdgpu_si_copy_bytes_to_smc(struct amdgpu_device *adev,
    u32 smc_start_address,
    const u8 *src, u32 byte_count, u32 limit)
{
 unsigned long flags;
 int ret = 0;
 u32 data, original_data, addr, extra_shift;

 if (smc_start_address & 3)
  return -EINVAL;
 if ((smc_start_address + byte_count) > limit)
  return -EINVAL;

 addr = smc_start_address;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);
 while (byte_count >= 4) {

  data = (src[0] << 24) | (src[1] << 16) | (src[2] << 8) | src[3];

  ret = si_set_smc_sram_address(adev, addr, limit);
  if (ret)
   goto done;

  WREG32(SMC_IND_DATA_0, data);

  src += 4;
  byte_count -= 4;
  addr += 4;
 }


 if (byte_count > 0) {
  data = 0;

  ret = si_set_smc_sram_address(adev, addr, limit);
  if (ret)
   goto done;

  original_data = RREG32(SMC_IND_DATA_0);
  extra_shift = 8 * (4 - byte_count);

  while (byte_count > 0) {

   data = (data << 8) + *src++;
   byte_count--;
  }

  data <<= extra_shift;
  data |= (original_data & ~((~0UL) << extra_shift));

  ret = si_set_smc_sram_address(adev, addr, limit);
  if (ret)
   goto done;

  WREG32(SMC_IND_DATA_0, data);
 }

done:
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);

 return ret;
}
