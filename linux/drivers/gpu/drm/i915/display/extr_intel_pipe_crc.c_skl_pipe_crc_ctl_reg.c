
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
 int PIPE_CRC_SOURCE_DMUX_SKL ;
 int PIPE_CRC_SOURCE_PLANE_1_SKL ;
 int PIPE_CRC_SOURCE_PLANE_2_SKL ;
 int PIPE_CRC_SOURCE_PLANE_3_SKL ;
 int PIPE_CRC_SOURCE_PLANE_4_SKL ;
 int PIPE_CRC_SOURCE_PLANE_5_SKL ;
 int PIPE_CRC_SOURCE_PLANE_6_SKL ;
 int PIPE_CRC_SOURCE_PLANE_7_SKL ;

__attribute__((used)) static int skl_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
    enum pipe pipe,
    enum intel_pipe_crc_source *source,
    u32 *val)
{
 if (*source == INTEL_PIPE_CRC_SOURCE_AUTO)
  *source = 135;

 switch (*source) {
 case 134:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_1_SKL;
  break;
 case 133:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_2_SKL;
  break;
 case 132:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_3_SKL;
  break;
 case 131:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_4_SKL;
  break;
 case 130:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_5_SKL;
  break;
 case 129:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_6_SKL;
  break;
 case 128:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_PLANE_7_SKL;
  break;
 case 135:
  *val = PIPE_CRC_ENABLE | PIPE_CRC_SOURCE_DMUX_SKL;
  break;
 case 136:
  *val = 0;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
