
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 struct of_device_id const* i2c_of_match_device_sysfs (struct of_device_id const*,struct i2c_client*) ;
 struct of_device_id* of_match_device (struct of_device_id const*,int *) ;

const struct of_device_id
*i2c_of_match_device(const struct of_device_id *matches,
       struct i2c_client *client)
{
 const struct of_device_id *match;

 if (!(client && matches))
  return ((void*)0);

 match = of_match_device(matches, &client->dev);
 if (match)
  return match;

 return i2c_of_match_device_sysfs(matches, client);
}
