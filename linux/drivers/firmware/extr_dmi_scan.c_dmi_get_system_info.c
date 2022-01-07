
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** dmi_ident ;

const char *dmi_get_system_info(int field)
{
 return dmi_ident[field];
}
