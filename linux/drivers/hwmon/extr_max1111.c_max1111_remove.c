
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct spi_device {TYPE_1__ dev; } ;
struct max1111_data {int drvdata_lock; int hwmon_dev; } ;


 int hwmon_device_unregister (int ) ;
 int max1110_attr_group ;
 int max1111_attr_group ;
 int mutex_destroy (int *) ;
 struct max1111_data* spi_get_drvdata (struct spi_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int * the_max1111 ;

__attribute__((used)) static int max1111_remove(struct spi_device *spi)
{
 struct max1111_data *data = spi_get_drvdata(spi);




 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&spi->dev.kobj, &max1110_attr_group);
 sysfs_remove_group(&spi->dev.kobj, &max1111_attr_group);
 mutex_destroy(&data->drvdata_lock);
 return 0;
}
