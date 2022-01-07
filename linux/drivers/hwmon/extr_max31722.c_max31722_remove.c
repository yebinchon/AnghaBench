
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct max31722_data {int hwmon_dev; } ;


 int MAX31722_MODE_STANDBY ;
 int hwmon_device_unregister (int ) ;
 int max31722_set_mode (struct max31722_data*,int ) ;
 struct max31722_data* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int max31722_remove(struct spi_device *spi)
{
 struct max31722_data *data = spi_get_drvdata(spi);

 hwmon_device_unregister(data->hwmon_dev);

 return max31722_set_mode(data, MAX31722_MODE_STANDBY);
}
