
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum forcewake_domain_id { ____Placeholder_forcewake_domain_id } forcewake_domain_id ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ FW_DOMAIN_ID_COUNT ;
 int WARN_ON (int const) ;
 char const** forcewake_domain_names ;

const char *
intel_uncore_forcewake_domain_to_str(const enum forcewake_domain_id id)
{
 BUILD_BUG_ON(ARRAY_SIZE(forcewake_domain_names) != FW_DOMAIN_ID_COUNT);

 if (id >= 0 && id < FW_DOMAIN_ID_COUNT)
  return forcewake_domain_names[id];

 WARN_ON(id);

 return "unknown";
}
