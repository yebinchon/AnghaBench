
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dram_info {int bandwidth_kbps; int type; int ranks; int valid; int num_channels; } ;
struct drm_i915_private {struct dram_info dram_info; } ;
struct dram_dimm_info {int ranks; int width; int size; } ;
typedef enum intel_dram_type { ____Placeholder_intel_dram_type } intel_dram_type ;


 int BXT_DRAM_CHANNEL_ACTIVE_MASK ;
 int BXT_D_CR_DRP0_DUNIT (int) ;
 int BXT_D_CR_DRP0_DUNIT_END ;
 int BXT_D_CR_DRP0_DUNIT_START ;
 int BXT_MEMORY_FREQ_MULTIPLIER_HZ ;
 int BXT_P_CR_MC_BIOS_REQ_0_0_0 ;
 int BXT_REQ_DATA_MASK ;
 int DIV_ROUND_UP (int,int) ;
 int DRM_DEBUG_KMS (char*,int,int ,int ,int,int ) ;
 int DRM_INFO (char*) ;
 int EINVAL ;
 int I915_READ (int ) ;
 int INTEL_DRAM_UNKNOWN ;
 int WARN_ON (int) ;
 int bxt_get_dimm_info (struct dram_dimm_info*,int) ;
 int bxt_get_dimm_type (int) ;
 int hweight32 (int) ;
 int intel_dram_type_str (int) ;

__attribute__((used)) static int
bxt_get_dram_info(struct drm_i915_private *dev_priv)
{
 struct dram_info *dram_info = &dev_priv->dram_info;
 u32 dram_channels;
 u32 mem_freq_khz, val;
 u8 num_active_channels;
 int i;

 val = I915_READ(BXT_P_CR_MC_BIOS_REQ_0_0_0);
 mem_freq_khz = DIV_ROUND_UP((val & BXT_REQ_DATA_MASK) *
        BXT_MEMORY_FREQ_MULTIPLIER_HZ, 1000);

 dram_channels = val & BXT_DRAM_CHANNEL_ACTIVE_MASK;
 num_active_channels = hweight32(dram_channels);


 dram_info->bandwidth_kbps = (mem_freq_khz * num_active_channels * 4);

 if (dram_info->bandwidth_kbps == 0) {
  DRM_INFO("Couldn't get system memory bandwidth\n");
  return -EINVAL;
 }




 for (i = BXT_D_CR_DRP0_DUNIT_START; i <= BXT_D_CR_DRP0_DUNIT_END; i++) {
  struct dram_dimm_info dimm;
  enum intel_dram_type type;

  val = I915_READ(BXT_D_CR_DRP0_DUNIT(i));
  if (val == 0xFFFFFFFF)
   continue;

  dram_info->num_channels++;

  bxt_get_dimm_info(&dimm, val);
  type = bxt_get_dimm_type(val);

  WARN_ON(type != INTEL_DRAM_UNKNOWN &&
   dram_info->type != INTEL_DRAM_UNKNOWN &&
   dram_info->type != type);

  DRM_DEBUG_KMS("CH%u DIMM size: %u GB, width: X%u, ranks: %u, type: %s\n",
         i - BXT_D_CR_DRP0_DUNIT_START,
         dimm.size, dimm.width, dimm.ranks,
         intel_dram_type_str(type));






  if (dram_info->ranks == 0)
   dram_info->ranks = dimm.ranks;
  else if (dimm.ranks == 1)
   dram_info->ranks = 1;

  if (type != INTEL_DRAM_UNKNOWN)
   dram_info->type = type;
 }

 if (dram_info->type == INTEL_DRAM_UNKNOWN ||
     dram_info->ranks == 0) {
  DRM_INFO("couldn't get memory information\n");
  return -EINVAL;
 }

 dram_info->valid = 1;
 return 0;
}
