
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device_id {char* name; scalar_t__ driver_data; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct spi_device {int irq; TYPE_2__ dev; } ;
struct regmap {int dummy; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef enum inv_devices { ____Placeholder_inv_devices } inv_devices ;
struct TYPE_4__ {int acpi_match_table; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_2__*) ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct regmap* devm_regmap_init_spi (struct spi_device*,int *) ;
 int inv_mpu_core_probe (struct regmap*,int ,char const*,int ,int) ;
 int inv_mpu_i2c_disable ;
 int inv_mpu_regmap_config ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int inv_mpu_probe(struct spi_device *spi)
{
 struct regmap *regmap;
 const struct spi_device_id *spi_id;
 const struct acpi_device_id *acpi_id;
 const char *name = ((void*)0);
 enum inv_devices chip_type;

 if ((spi_id = spi_get_device_id(spi))) {
  chip_type = (enum inv_devices)spi_id->driver_data;
  name = spi_id->name;
 } else if ((acpi_id = acpi_match_device(spi->dev.driver->acpi_match_table, &spi->dev))) {
  chip_type = (enum inv_devices)acpi_id->driver_data;
 } else {
  return -ENODEV;
 }

 regmap = devm_regmap_init_spi(spi, &inv_mpu_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&spi->dev, "Failed to register spi regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return inv_mpu_core_probe(regmap, spi->irq, name,
      inv_mpu_i2c_disable, chip_type);
}
