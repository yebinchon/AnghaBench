
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * drm_named_modes_whitelist ;
 int strncmp (char const*,int ,unsigned int) ;

__attribute__((used)) static bool drm_named_mode_is_in_whitelist(const char *mode, unsigned int size)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(drm_named_modes_whitelist); i++)
  if (!strncmp(mode, drm_named_modes_whitelist[i], size))
   return 1;

 return 0;
}
