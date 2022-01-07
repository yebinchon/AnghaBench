
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct skl_ddb_allocation {int enabled_slices; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int ddb_size; } ;


 int GBps (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_2__* INTEL_INFO (struct drm_i915_private*) ;
 int WARN_ON (int) ;
 int const drm_mode_vrefresh (struct drm_display_mode const*) ;

__attribute__((used)) static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
         const struct intel_crtc_state *crtc_state,
         const u64 total_data_rate,
         const int num_active,
         struct skl_ddb_allocation *ddb)
{
 const struct drm_display_mode *adjusted_mode;
 u64 total_data_bw;
 u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;

 WARN_ON(ddb_size == 0);

 if (INTEL_GEN(dev_priv) < 11)
  return ddb_size - 4;

 adjusted_mode = &crtc_state->base.adjusted_mode;
 total_data_bw = total_data_rate * drm_mode_vrefresh(adjusted_mode);
 if (0 && (num_active > 1 || total_data_bw >= GBps(12))) {
  ddb->enabled_slices = 2;
 } else {
  ddb->enabled_slices = 1;
  ddb_size /= 2;
 }

 return ddb_size;
}
