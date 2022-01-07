
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ rlc_autoload_gpu_addr; } ;
struct TYPE_5__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int dev; } ;
struct TYPE_6__ {scalar_t__ offset; } ;


 int CP_PFP_IC_OP_CNTL ;
 int EINVAL ;
 size_t FIRMWARE_ID_CP_PFP ;
 int GC ;
 int INVALIDATE_CACHE ;
 int INVALIDATE_CACHE_COMPLETE ;
 int REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int dev_err (int ,char*) ;
 int lower_32_bits (scalar_t__) ;
 int mmCP_PFP_IC_BASE_HI ;
 int mmCP_PFP_IC_BASE_LO ;
 int mmCP_PFP_IC_OP_CNTL ;
 TYPE_3__* rlc_autoload_info ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int gfx_v10_0_rlc_backdoor_autoload_config_pfp_cache(struct amdgpu_device *adev)
{
 uint32_t usec_timeout = 50000;
 uint32_t tmp;
 int i;
 uint64_t addr;


 tmp = RREG32_SOC15(GC, 0, mmCP_PFP_IC_OP_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_PFP_IC_OP_CNTL, INVALIDATE_CACHE, 1);
 WREG32_SOC15(GC, 0, mmCP_PFP_IC_OP_CNTL, tmp);


 for (i = 0; i < usec_timeout; i++) {
  tmp = RREG32_SOC15(GC, 0, mmCP_PFP_IC_OP_CNTL);
  if (1 == REG_GET_FIELD(tmp, CP_PFP_IC_OP_CNTL,
   INVALIDATE_CACHE_COMPLETE))
   break;
  udelay(1);
 }

 if (i >= usec_timeout) {
  dev_err(adev->dev, "failed to invalidate instruction cache\n");
  return -EINVAL;
 }


 addr = adev->gfx.rlc.rlc_autoload_gpu_addr +
  rlc_autoload_info[FIRMWARE_ID_CP_PFP].offset;
 WREG32_SOC15(GC, 0, mmCP_PFP_IC_BASE_LO,
   lower_32_bits(addr) & 0xFFFFF000);
 WREG32_SOC15(GC, 0, mmCP_PFP_IC_BASE_HI,
   upper_32_bits(addr));

 return 0;
}
