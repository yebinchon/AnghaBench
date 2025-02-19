
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc4245_platform_data {int use_extra_gpios; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 struct ltc4245_platform_data* dev_get_platdata (TYPE_1__*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;

__attribute__((used)) static bool ltc4245_use_extra_gpios(struct i2c_client *client)
{
 struct ltc4245_platform_data *pdata = dev_get_platdata(&client->dev);
 struct device_node *np = client->dev.of_node;


 if (pdata)
  return pdata->use_extra_gpios;


 if (of_find_property(np, "ltc4245,use-extra-gpios", ((void*)0)))
  return 1;

 return 0;
}
