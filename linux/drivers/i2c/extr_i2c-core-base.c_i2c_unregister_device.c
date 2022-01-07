
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 scalar_t__ ACPI_COMPANION (TYPE_1__*) ;
 scalar_t__ IS_ERR_OR_NULL (struct i2c_client*) ;
 int OF_POPULATED ;
 int acpi_device_clear_enumerated (scalar_t__) ;
 int device_unregister (TYPE_1__*) ;
 int of_node_clear_flag (scalar_t__,int ) ;
 int of_node_put (scalar_t__) ;

void i2c_unregister_device(struct i2c_client *client)
{
 if (IS_ERR_OR_NULL(client))
  return;

 if (client->dev.of_node) {
  of_node_clear_flag(client->dev.of_node, OF_POPULATED);
  of_node_put(client->dev.of_node);
 }

 if (ACPI_COMPANION(&client->dev))
  acpi_device_clear_enumerated(ACPI_COMPANION(&client->dev));
 device_unregister(&client->dev);
}
