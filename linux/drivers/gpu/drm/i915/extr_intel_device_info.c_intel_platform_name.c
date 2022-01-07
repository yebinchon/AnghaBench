
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_platform { ____Placeholder_intel_platform } intel_platform ;


 int ARRAY_SIZE (char const**) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ INTEL_MAX_PLATFORMS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 char const** platform_names ;

const char *intel_platform_name(enum intel_platform platform)
{
 BUILD_BUG_ON(ARRAY_SIZE(platform_names) != INTEL_MAX_PLATFORMS);

 if (WARN_ON_ONCE(platform >= ARRAY_SIZE(platform_names) ||
    platform_names[platform] == ((void*)0)))
  return "<unknown>";

 return platform_names[platform];
}
