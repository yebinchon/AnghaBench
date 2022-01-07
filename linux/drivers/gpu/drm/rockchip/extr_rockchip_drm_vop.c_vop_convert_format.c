
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum vop_data_format { ____Placeholder_vop_data_format } vop_data_format ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int VOP_FMT_ARGB8888 ;
 int VOP_FMT_RGB565 ;
 int VOP_FMT_RGB888 ;
 int VOP_FMT_YUV420SP ;
 int VOP_FMT_YUV422SP ;
 int VOP_FMT_YUV444SP ;

__attribute__((used)) static enum vop_data_format vop_convert_format(uint32_t format)
{
 switch (format) {
 case 128:
 case 137:
 case 129:
 case 138:
  return VOP_FMT_ARGB8888;
 case 130:
 case 135:
  return VOP_FMT_RGB888;
 case 131:
 case 136:
  return VOP_FMT_RGB565;
 case 134:
  return VOP_FMT_YUV420SP;
 case 133:
  return VOP_FMT_YUV422SP;
 case 132:
  return VOP_FMT_YUV444SP;
 default:
  DRM_ERROR("unsupported format[%08x]\n", format);
  return -EINVAL;
 }
}
