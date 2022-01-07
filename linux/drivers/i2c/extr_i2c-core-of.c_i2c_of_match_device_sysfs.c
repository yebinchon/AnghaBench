
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {char const* compatible; } ;
struct i2c_client {int name; } ;


 char* strchr (char const*,char) ;
 scalar_t__ sysfs_streq (int ,char const*) ;

__attribute__((used)) static const struct of_device_id*
i2c_of_match_device_sysfs(const struct of_device_id *matches,
      struct i2c_client *client)
{
 const char *name;

 for (; matches->compatible[0]; matches++) {






  if (sysfs_streq(client->name, matches->compatible))
   return matches;

  name = strchr(matches->compatible, ',');
  if (!name)
   name = matches->compatible;
  else
   name++;

  if (sysfs_streq(client->name, name))
   return matches;
 }

 return ((void*)0);
}
