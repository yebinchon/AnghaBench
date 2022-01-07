
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int EINVAL ;
 int VL_FMT_YUV420 ;
 int VL_FMT_YUV422 ;
 int VL_FMT_YUV444_8BIT ;
 int VL_YUV420_PLANAR ;
 int VL_YUV422_UYVY ;
 int VL_YUV422_VYUY ;
 int VL_YUV422_YUYV ;
 int VL_YUV422_YVYU ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static int zx_vl_get_fmt(uint32_t format)
{
 switch (format) {
 case 134:
  return VL_FMT_YUV420;
 case 131:
  return VL_YUV420_PLANAR | VL_FMT_YUV420;
 case 129:
  return VL_YUV422_YUYV | VL_FMT_YUV422;
 case 128:
  return VL_YUV422_YVYU | VL_FMT_YUV422;
 case 133:
  return VL_YUV422_UYVY | VL_FMT_YUV422;
 case 132:
  return VL_YUV422_VYUY | VL_FMT_YUV422;
 case 130:
  return VL_FMT_YUV444_8BIT;
 default:
  WARN_ONCE(1, "invalid pixel format %d\n", format);
  return -EINVAL;
 }
}
