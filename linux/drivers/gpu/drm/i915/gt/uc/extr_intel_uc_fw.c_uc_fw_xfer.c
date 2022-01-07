
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct uc_css_header {int dummy; } ;
struct intel_uncore {int dummy; } ;
struct intel_uc_fw {int ucode_size; int type; } ;
struct intel_gt {TYPE_2__* i915; int ggtt; struct intel_uncore* uncore; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int DMA_ADDRESS_SPACE_WOPCM ;
 int DMA_ADDR_0_HIGH ;
 int DMA_ADDR_0_LOW ;
 int DMA_ADDR_1_HIGH ;
 int DMA_ADDR_1_LOW ;
 int DMA_COPY_SIZE ;
 int DMA_CTRL ;
 int ETIMEDOUT ;
 int FORCEWAKE_ALL ;
 int GEM_BUG_ON (int) ;
 int START_DMA ;
 int _MASKED_BIT_DISABLE (int) ;
 int _MASKED_BIT_ENABLE (int) ;
 int dev_err (int ,char*,int ,int ) ;
 int i915_inject_load_error (TYPE_2__*,int ) ;
 int intel_uc_fw_type_repr (int ) ;
 int intel_uncore_forcewake_get (struct intel_uncore*,int ) ;
 int intel_uncore_forcewake_put (struct intel_uncore*,int ) ;
 int intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;
 int intel_wait_for_register_fw (struct intel_uncore*,int ,int,int ,int) ;
 int lower_32_bits (int ) ;
 int uc_fw_ggtt_offset (struct intel_uc_fw*,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int uc_fw_xfer(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
        u32 wopcm_offset, u32 dma_flags)
{
 struct intel_uncore *uncore = gt->uncore;
 u64 offset;
 int ret;

 ret = i915_inject_load_error(gt->i915, -ETIMEDOUT);
 if (ret)
  return ret;

 intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);


 offset = uc_fw_ggtt_offset(uc_fw, gt->ggtt);
 GEM_BUG_ON(upper_32_bits(offset) & 0xFFFF0000);
 intel_uncore_write_fw(uncore, DMA_ADDR_0_LOW, lower_32_bits(offset));
 intel_uncore_write_fw(uncore, DMA_ADDR_0_HIGH, upper_32_bits(offset));


 intel_uncore_write_fw(uncore, DMA_ADDR_1_LOW, wopcm_offset);
 intel_uncore_write_fw(uncore, DMA_ADDR_1_HIGH, DMA_ADDRESS_SPACE_WOPCM);





 intel_uncore_write_fw(uncore, DMA_COPY_SIZE,
         sizeof(struct uc_css_header) + uc_fw->ucode_size);


 intel_uncore_write_fw(uncore, DMA_CTRL,
         _MASKED_BIT_ENABLE(dma_flags | START_DMA));


 ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
 if (ret)
  dev_err(gt->i915->drm.dev, "DMA for %s fw failed, DMA_CTRL=%u\n",
   intel_uc_fw_type_repr(uc_fw->type),
   intel_uncore_read_fw(uncore, DMA_CTRL));


 intel_uncore_write_fw(uncore, DMA_CTRL, _MASKED_BIT_DISABLE(dma_flags));

 intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);

 return ret;
}
