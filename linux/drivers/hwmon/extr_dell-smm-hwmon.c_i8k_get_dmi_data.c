
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dmi_get_system_info (int) ;

__attribute__((used)) static inline const char *i8k_get_dmi_data(int field)
{
 const char *dmi_data = dmi_get_system_info(field);

 return dmi_data && *dmi_data ? dmi_data : "?";
}
