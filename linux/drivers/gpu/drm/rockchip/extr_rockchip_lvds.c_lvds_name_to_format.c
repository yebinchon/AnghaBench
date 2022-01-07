
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LVDS_JEIDA_18 ;
 int LVDS_JEIDA_24 ;
 int LVDS_VESA_24 ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static inline int lvds_name_to_format(const char *s)
{
 if (strncmp(s, "jeida-18", 8) == 0)
  return LVDS_JEIDA_18;
 else if (strncmp(s, "jeida-24", 8) == 0)
  return LVDS_JEIDA_24;
 else if (strncmp(s, "vesa-24", 7) == 0)
  return LVDS_VESA_24;

 return -EINVAL;
}
