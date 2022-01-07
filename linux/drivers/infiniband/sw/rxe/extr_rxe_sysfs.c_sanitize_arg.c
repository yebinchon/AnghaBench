
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sanitize_arg(const char *val, char *intf, int intf_len)
{
 int len;

 if (!val)
  return 0;


 for (len = 0; len < intf_len - 1 && val[len] && val[len] != '\n'; len++)
  intf[len] = val[len];
 intf[len] = 0;

 if (len == 0 || (val[len] != 0 && val[len] != '\n'))
  return 0;

 return len;
}
