
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int flags; } ;
typedef enum hdmi_3d_structure { ____Placeholder_hdmi_3d_structure } hdmi_3d_structure ;







 int DRM_MODE_FLAG_3D_MASK ;



 int HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE ;
 int HDMI_3D_STRUCTURE_FRAME_PACKING ;
 int HDMI_3D_STRUCTURE_INVALID ;
 int HDMI_3D_STRUCTURE_LINE_ALTERNATIVE ;
 int HDMI_3D_STRUCTURE_L_DEPTH ;
 int HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH ;
 int HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL ;
 int HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF ;
 int HDMI_3D_STRUCTURE_TOP_AND_BOTTOM ;

__attribute__((used)) static enum hdmi_3d_structure
s3d_structure_from_display_mode(const struct drm_display_mode *mode)
{
 u32 layout = mode->flags & DRM_MODE_FLAG_3D_MASK;

 switch (layout) {
 case 134:
  return HDMI_3D_STRUCTURE_FRAME_PACKING;
 case 135:
  return HDMI_3D_STRUCTURE_FIELD_ALTERNATIVE;
 case 133:
  return HDMI_3D_STRUCTURE_LINE_ALTERNATIVE;
 case 130:
  return HDMI_3D_STRUCTURE_SIDE_BY_SIDE_FULL;
 case 132:
  return HDMI_3D_STRUCTURE_L_DEPTH;
 case 131:
  return HDMI_3D_STRUCTURE_L_DEPTH_GFX_GFX_DEPTH;
 case 128:
  return HDMI_3D_STRUCTURE_TOP_AND_BOTTOM;
 case 129:
  return HDMI_3D_STRUCTURE_SIDE_BY_SIDE_HALF;
 default:
  return HDMI_3D_STRUCTURE_INVALID;
 }
}
