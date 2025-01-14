
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_OUTPUT_DUAL_LVDS ;
 int DISPLAY_OUTPUT_LVDS ;
 int DISPLAY_OUTPUT_RGB ;
 int EINVAL ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static inline int lvds_name_to_output(const char *s)
{
 if (strncmp(s, "rgb", 3) == 0)
  return DISPLAY_OUTPUT_RGB;
 else if (strncmp(s, "lvds", 4) == 0)
  return DISPLAY_OUTPUT_LVDS;
 else if (strncmp(s, "duallvds", 8) == 0)
  return DISPLAY_OUTPUT_DUAL_LVDS;

 return -EINVAL;
}
