
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum rmi_f54_report_type { ____Placeholder_rmi_f54_report_type } rmi_f54_report_type ;


 int EINVAL ;
 int V4L2_TCH_FMT_DELTA_TD08 ;
 int V4L2_TCH_FMT_DELTA_TD16 ;
 int V4L2_TCH_FMT_TU16 ;

__attribute__((used)) static int rmi_f54_get_pixel_fmt(enum rmi_f54_report_type reptype, u32 *pixfmt)
{
 int ret = 0;

 switch (reptype) {
 case 134:
  *pixfmt = V4L2_TCH_FMT_DELTA_TD08;
  break;

 case 135:
  *pixfmt = V4L2_TCH_FMT_DELTA_TD16;
  break;

 case 130:
 case 128:
 case 133:
 case 132:
  *pixfmt = V4L2_TCH_FMT_TU16;
  break;

 case 129:
 case 131:
  ret = -EINVAL;
  break;
 }

 return ret;
}
