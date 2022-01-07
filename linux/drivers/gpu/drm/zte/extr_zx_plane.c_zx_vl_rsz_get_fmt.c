
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int EINVAL ;
 int RSZ_VL_FMT_YCBCR420 ;
 int RSZ_VL_FMT_YCBCR422 ;
 int RSZ_VL_FMT_YCBCR444 ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static int zx_vl_rsz_get_fmt(uint32_t format)
{
 switch (format) {
 case 134:
 case 131:
  return RSZ_VL_FMT_YCBCR420;
 case 129:
 case 128:
 case 133:
 case 132:
  return RSZ_VL_FMT_YCBCR422;
 case 130:
  return RSZ_VL_FMT_YCBCR444;
 default:
  WARN_ONCE(1, "invalid pixel format %d\n", format);
  return -EINVAL;
 }
}
