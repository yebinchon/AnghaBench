
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* dmi_ident ;
 scalar_t__ strstr (scalar_t__,char const*) ;

int dmi_name_in_vendors(const char *str)
{
 static int fields[] = { 128, 130, 129 };
 int i;
 for (i = 0; fields[i] != 129; i++) {
  int f = fields[i];
  if (dmi_ident[f] && strstr(dmi_ident[f], str))
   return 1;
 }
 return 0;
}
