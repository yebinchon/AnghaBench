
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_wm_config {int num_pipes_active; scalar_t__ sprites_enabled; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_ddb_partitioning { ____Placeholder_intel_ddb_partitioning } intel_ddb_partitioning ;
struct TYPE_2__ {unsigned int num_pipes; } ;


 int INTEL_DDB_PART_5_6 ;
 int INTEL_GEN (struct drm_i915_private const*) ;
 TYPE_1__* INTEL_INFO (struct drm_i915_private const*) ;
 unsigned int ilk_display_fifo_size (struct drm_i915_private const*) ;
 int ilk_plane_wm_reg_max (struct drm_i915_private const*,int,int) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static unsigned int ilk_plane_wm_max(const struct drm_i915_private *dev_priv,
         int level,
         const struct intel_wm_config *config,
         enum intel_ddb_partitioning ddb_partitioning,
         bool is_sprite)
{
 unsigned int fifo_size = ilk_display_fifo_size(dev_priv);


 if (is_sprite && !config->sprites_enabled)
  return 0;


 if (level == 0 || config->num_pipes_active > 1) {
  fifo_size /= INTEL_INFO(dev_priv)->num_pipes;






  if (INTEL_GEN(dev_priv) <= 6)
   fifo_size /= 2;
 }

 if (config->sprites_enabled) {

  if (level > 0 && ddb_partitioning == INTEL_DDB_PART_5_6) {
   if (is_sprite)
    fifo_size *= 5;
   fifo_size /= 6;
  } else {
   fifo_size /= 2;
  }
 }


 return min(fifo_size, ilk_plane_wm_reg_max(dev_priv, level, is_sprite));
}
