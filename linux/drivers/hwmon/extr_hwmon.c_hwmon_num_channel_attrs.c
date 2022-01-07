
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwmon_channel_info {scalar_t__* config; } ;


 scalar_t__ hweight32 (scalar_t__) ;

__attribute__((used)) static int hwmon_num_channel_attrs(const struct hwmon_channel_info *info)
{
 int i, n;

 for (i = n = 0; info->config[i]; i++)
  n += hweight32(info->config[i]);

 return n;
}
