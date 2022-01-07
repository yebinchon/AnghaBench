
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct etmv4_config {int mode; } ;


 int ETM_EXLEVEL_NS_APP ;
 int ETM_EXLEVEL_NS_HYP ;
 int ETM_EXLEVEL_NS_OS ;
 int ETM_MODE_EXCL_KERN ;
 int ETM_MODE_EXCL_USER ;
 int is_kernel_in_hyp_mode () ;

__attribute__((used)) static u64 etm4_get_ns_access_type(struct etmv4_config *config)
{
 u64 access_type = 0;
 if (!is_kernel_in_hyp_mode()) {

  access_type = ETM_EXLEVEL_NS_HYP;
  if (config->mode & ETM_MODE_EXCL_KERN)
   access_type |= ETM_EXLEVEL_NS_OS;
 } else if (config->mode & ETM_MODE_EXCL_KERN) {
  access_type = ETM_EXLEVEL_NS_HYP;
 }

 if (config->mode & ETM_MODE_EXCL_USER)
  access_type |= ETM_EXLEVEL_NS_APP;

 return access_type;
}
