
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dram_info {int bandwidth_kbps; int num_channels; int valid; int type; } ;
struct drm_i915_private {struct dram_info dram_info; } ;


 int DIV_ROUND_UP (int,int) ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_INFO (char*) ;
 int EINVAL ;
 int I915_READ (int ) ;
 int SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU ;
 int SKL_MEMORY_FREQ_MULTIPLIER_HZ ;
 int SKL_REQ_DATA_MASK ;
 int intel_dram_type_str (int ) ;
 int skl_dram_get_channels_info (struct drm_i915_private*) ;
 int skl_get_dram_type (struct drm_i915_private*) ;

__attribute__((used)) static int
skl_get_dram_info(struct drm_i915_private *dev_priv)
{
 struct dram_info *dram_info = &dev_priv->dram_info;
 u32 mem_freq_khz, val;
 int ret;

 dram_info->type = skl_get_dram_type(dev_priv);
 DRM_DEBUG_KMS("DRAM type: %s\n", intel_dram_type_str(dram_info->type));

 ret = skl_dram_get_channels_info(dev_priv);
 if (ret)
  return ret;

 val = I915_READ(SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
        SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);

 dram_info->bandwidth_kbps = dram_info->num_channels *
       mem_freq_khz * 8;

 if (dram_info->bandwidth_kbps == 0) {
  DRM_INFO("Couldn't get system memory bandwidth\n");
  return -EINVAL;
 }

 dram_info->valid = 1;
 return 0;
}
