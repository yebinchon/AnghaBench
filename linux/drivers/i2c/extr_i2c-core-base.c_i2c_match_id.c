
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {scalar_t__* name; } ;
struct i2c_client {int name; } ;


 scalar_t__ strcmp (int ,scalar_t__*) ;

const struct i2c_device_id *i2c_match_id(const struct i2c_device_id *id,
      const struct i2c_client *client)
{
 if (!(id && client))
  return ((void*)0);

 while (id->name[0]) {
  if (strcmp(client->name, id->name) == 0)
   return id;
  id++;
 }
 return ((void*)0);
}
