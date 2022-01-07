
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dmi_field { ____Placeholder_dmi_field } dmi_field ;


 char* dmi_get_system_info (int) ;
 int strcmp (char const*,char const*) ;

bool dmi_match(enum dmi_field f, const char *str)
{
 const char *info = dmi_get_system_info(f);

 if (info == ((void*)0) || str == ((void*)0))
  return info == str;

 return !strcmp(info, str);
}
