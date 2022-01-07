
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;




 int EINVAL ;
 int SUN4I_FRONTEND_OUTPUT_FMT_DATA_FMT_BGRX8888 ;
 int SUN4I_FRONTEND_OUTPUT_FMT_DATA_FMT_XRGB8888 ;

__attribute__((used)) static int sun4i_frontend_drm_format_to_output_fmt(uint32_t fmt, u32 *val)
{
 switch (fmt) {
 case 129:
  *val = SUN4I_FRONTEND_OUTPUT_FMT_DATA_FMT_BGRX8888;
  return 0;

 case 128:
  *val = SUN4I_FRONTEND_OUTPUT_FMT_DATA_FMT_XRGB8888;
  return 0;

 default:
  return -EINVAL;
 }
}
