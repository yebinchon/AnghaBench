
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
typedef enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;


 int EINVAL ;
 int INTEL_PIPE_CRC_SOURCE_AUTO ;



 int PIPE_CRC_ENABLE ;
 int PIPE_CRC_SOURCE_PIPE_I9XX ;
 int PIPE_CRC_SOURCE_TV_PRE ;
 int SUPPORTS_TV (struct drm_i915_private*) ;
 int i9xx_pipe_crc_auto_source (struct drm_i915_private*,int,int*) ;

__attribute__((used)) static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
     enum pipe pipe,
     enum intel_pipe_crc_source *source,
     u32 *val)
{
 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO) {
  int ret = i9xx_pipe_crc_auto_source(dev_priv, pipe, source);
  if (ret)
   return ret;
 }

 switch (*source) {
 case 129:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PIPE_I9XX;
  break;
 case 128:
  if (!SUPPORTS_TV(dev_priv))
   return -EINVAL;
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_TV_PRE;
  break;
 case 130:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
