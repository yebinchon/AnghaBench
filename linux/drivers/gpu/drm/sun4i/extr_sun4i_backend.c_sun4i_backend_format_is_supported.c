
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 scalar_t__* sun4i_backend_formats ;

bool sun4i_backend_format_is_supported(uint32_t fmt, uint64_t modifier)
{
 unsigned int i;

 if (modifier != DRM_FORMAT_MOD_LINEAR)
  return 0;

 for (i = 0; i < ARRAY_SIZE(sun4i_backend_formats); i++)
  if (sun4i_backend_formats[i] == fmt)
   return 1;

 return 0;
}
