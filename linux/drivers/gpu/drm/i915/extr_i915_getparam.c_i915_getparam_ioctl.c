
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct sseu_dev_info {int eu_total; int min_eu_in_pool; int slice_mask; int* subslice_mask; } ;
struct TYPE_17__ {int scheduler; } ;
struct TYPE_15__ {int huc; } ;
struct TYPE_16__ {TYPE_4__ uc; } ;
struct TYPE_14__ {int num_fences; } ;
struct TYPE_13__ {TYPE_1__* pdev; } ;
struct drm_i915_private {TYPE_6__ caps; TYPE_5__ gt; int overlay; TYPE_3__ ggtt; TYPE_2__ drm; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_18__ {int param; int value; } ;
typedef TYPE_7__ drm_i915_getparam_t ;
struct TYPE_20__ {int cs_timestamp_frequency_khz; struct sseu_dev_info sseu; } ;
struct TYPE_19__ {int enable_hangcheck; } ;
struct TYPE_12__ {int device; int revision; } ;
struct TYPE_11__ {int has_coherent_ggtt; } ;


 int CAP_SYS_ADMIN ;
 int DRM_DEBUG (char*,int) ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int HAS_LLC (struct drm_i915_private*) ;
 int HAS_POOLED_EU (struct drm_i915_private*) ;
 int HAS_SECURE_BATCHES (struct drm_i915_private*) ;
 int HAS_WT (struct drm_i915_private*) ;
 int I915_ENGINE_CLASS_COPY ;
 int I915_ENGINE_CLASS_VIDEO ;
 int I915_ENGINE_CLASS_VIDEO_ENHANCE ;
 int I915_SCHEDULER_CAP_SEMAPHORES ;
 TYPE_10__* INTEL_INFO (struct drm_i915_private*) ;
 int INTEL_PPGTT (struct drm_i915_private*) ;
 TYPE_9__* RUNTIME_INFO (struct drm_i915_private*) ;
 int capable (int ) ;
 int i915_cmd_parser_get_version (struct drm_i915_private*) ;
 int i915_gem_mmap_gtt_version () ;
 TYPE_8__ i915_modparams ;
 int intel_engine_lookup_user (struct drm_i915_private*,int ,int) ;
 int intel_engines_has_context_isolation (struct drm_i915_private*) ;
 int intel_has_gpu_reset (struct drm_i915_private*) ;
 int intel_has_reset_engine (struct drm_i915_private*) ;
 int intel_huc_check_status (int *) ;
 int intel_sseu_subslice_total (struct sseu_dev_info const*) ;
 scalar_t__ put_user (int,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int i915_getparam_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_i915_private *i915 = to_i915(dev);
 const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
 drm_i915_getparam_t *param = data;
 int value;

 switch (param->param) {
 case 138:
 case 180:
 case 137:
 case 164:

  return -ENODEV;
 case 179:
  value = i915->drm.pdev->device;
  break;
 case 131:
  value = i915->drm.pdev->revision;
  break;
 case 132:
  value = i915->ggtt.num_fences;
  break;
 case 153:
  value = !!i915->overlay;
  break;
 case 173:
  value = !!intel_engine_lookup_user(i915,
         I915_ENGINE_CLASS_VIDEO, 0);
  break;
 case 174:
  value = !!intel_engine_lookup_user(i915,
         I915_ENGINE_CLASS_COPY, 0);
  break;
 case 142:
  value = !!intel_engine_lookup_user(i915,
         I915_ENGINE_CLASS_VIDEO_ENHANCE, 0);
  break;
 case 172:
  value = !!intel_engine_lookup_user(i915,
         I915_ENGINE_CLASS_VIDEO, 1);
  break;
 case 154:
  value = HAS_LLC(i915);
  break;
 case 140:
  value = HAS_WT(i915);
  break;
 case 175:
  value = INTEL_PPGTT(i915);
  break;
 case 143:
  value = !!(i915->caps.scheduler & I915_SCHEDULER_CAP_SEMAPHORES);
  break;
 case 144:
  value = HAS_SECURE_BATCHES(i915) && capable(CAP_SYS_ADMIN);
  break;
 case 178:
  value = i915_cmd_parser_get_version(i915);
  break;
 case 128:
  value = intel_sseu_subslice_total(sseu);
  if (!value)
   return -ENODEV;
  break;
 case 176:
  value = sseu->eu_total;
  if (!value)
   return -ENODEV;
  break;
 case 155:
  value = i915_modparams.enable_hangcheck &&
   intel_has_gpu_reset(i915);
  if (value && intel_has_reset_engine(i915))
   value = 2;
  break;
 case 146:
  value = 0;
  break;
 case 150:
  value = HAS_POOLED_EU(i915);
  break;
 case 136:
  value = sseu->min_eu_in_pool;
  break;
 case 139:
  value = intel_huc_check_status(&i915->gt.uc.huc);
  if (value < 0)
   return value;
  break;
 case 134:




  value = i915_gem_mmap_gtt_version();
  break;
 case 145:
  value = i915->caps.scheduler;
  break;

 case 133:

 case 157:
 case 152:
 case 168:
 case 147:
 case 170:
 case 148:
 case 156:
 case 141:
 case 149:
 case 151:
 case 160:
 case 161:
 case 171:
 case 159:
 case 167:
 case 163:
 case 165:
 case 166:
 case 162:
 case 158:





  value = 1;
  break;
 case 169:
  value = intel_engines_has_context_isolation(i915);
  break;
 case 130:
  value = sseu->slice_mask;
  if (!value)
   return -ENODEV;
  break;
 case 129:
  value = sseu->subslice_mask[0];
  if (!value)
   return -ENODEV;
  break;
 case 177:
  value = 1000 * RUNTIME_INFO(i915)->cs_timestamp_frequency_khz;
  break;
 case 135:
  value = INTEL_INFO(i915)->has_coherent_ggtt;
  break;
 default:
  DRM_DEBUG("Unknown parameter %d\n", param->param);
  return -EINVAL;
 }

 if (put_user(value, param->value))
  return -EFAULT;

 return 0;
}
