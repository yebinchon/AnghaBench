
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_sensors_platform_data {scalar_t__ spi_3wire; } ;
struct TYPE_2__ {scalar_t__ platform_data; struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static bool st_sensors_is_spi_3_wire(struct spi_device *spi)
{
 struct device_node *np = spi->dev.of_node;
 struct st_sensors_platform_data *pdata;

 pdata = (struct st_sensors_platform_data *)spi->dev.platform_data;
 if ((np && of_property_read_bool(np, "spi-3wire")) ||
     (pdata && pdata->spi_3wire)) {
  return 1;
 }

 return 0;
}
