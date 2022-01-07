
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_vendor_oui(char *oui)
{
 if (oui[0] || oui[1] || oui[2])
  return 1;
 return 0;
}
