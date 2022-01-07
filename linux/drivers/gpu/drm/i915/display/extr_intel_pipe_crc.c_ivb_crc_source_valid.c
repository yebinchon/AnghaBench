
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int EINVAL ;





__attribute__((used)) static int ivb_crc_source_valid(struct drm_i915_private *dev_priv,
    const enum intel_pipe_crc_source source)
{
 switch (source) {
 case 130:
 case 129:
 case 128:
 case 131:
  return 0;
 default:
  return -EINVAL;
 }
}
