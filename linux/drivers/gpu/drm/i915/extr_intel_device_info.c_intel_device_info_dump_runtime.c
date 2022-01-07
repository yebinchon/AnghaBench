
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_info {int cs_timestamp_frequency_khz; int sseu; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*,int ) ;
 int sseu_dump (int *,struct drm_printer*) ;

void intel_device_info_dump_runtime(const struct intel_runtime_info *info,
        struct drm_printer *p)
{
 sseu_dump(&info->sseu, p);

 drm_printf(p, "CS timestamp frequency: %u kHz\n",
     info->cs_timestamp_frequency_khz);
}
