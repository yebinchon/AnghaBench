
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
 int PIPE_CRC_SOURCE_PF_IVB ;
 int PIPE_CRC_SOURCE_PRIMARY_IVB ;
 int PIPE_CRC_SOURCE_SPRITE_IVB ;

__attribute__((used)) static int ivb_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
    enum pipe pipe,
    enum intel_pipe_crc_source *source,
    u32 *val)
{
 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
  *source = 130;

 switch (*source) {
 case 129:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PRIMARY_IVB;
  break;
 case 128:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_SPRITE_IVB;
  break;
 case 130:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PF_IVB;
  break;
 case 131:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
