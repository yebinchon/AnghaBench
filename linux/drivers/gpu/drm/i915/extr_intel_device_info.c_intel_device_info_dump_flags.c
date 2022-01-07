
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_device_info {int dummy; } ;
struct drm_printer {int dummy; } ;


 int DEV_INFO_DISPLAY_FOR_EACH_FLAG (int ) ;
 int DEV_INFO_FOR_EACH_FLAG (int ) ;
 int PRINT_FLAG ;

void intel_device_info_dump_flags(const struct intel_device_info *info,
      struct drm_printer *p)
{

 DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);



 DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);

}
