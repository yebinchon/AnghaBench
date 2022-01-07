
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct spi_device {int bits_per_word; TYPE_2__ dev; int mode; } ;
struct max1111_data {int lsb; int hwmon_dev; struct spi_device* spi; int drvdata_lock; void* sel_sh; } ;
typedef enum chips { ____Placeholder_chips } chips ;
struct TYPE_5__ {int driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 void* MAX1110_CTRL_SEL_SH ;
 void* MAX1111_CTRL_SEL_SH ;
 int PTR_ERR (int ) ;
 int SPI_MODE_0 ;
 int dev_err (TYPE_2__*,char*) ;
 struct max1111_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int hwmon_device_register (TYPE_2__*) ;

 int max1110_attr_group ;

 int max1111_attr_group ;


 int mutex_init (int *) ;
 int setup_transfer (struct max1111_data*) ;
 TYPE_1__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct max1111_data*) ;
 int spi_setup (struct spi_device*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 struct max1111_data* the_max1111 ;

__attribute__((used)) static int max1111_probe(struct spi_device *spi)
{
 enum chips chip = spi_get_device_id(spi)->driver_data;
 struct max1111_data *data;
 int err;

 spi->bits_per_word = 8;
 spi->mode = SPI_MODE_0;
 err = spi_setup(spi);
 if (err < 0)
  return err;

 data = devm_kzalloc(&spi->dev, sizeof(struct max1111_data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 switch (chip) {
 case 131:
  data->lsb = 8;
  data->sel_sh = MAX1110_CTRL_SEL_SH;
  break;
 case 130:
  data->lsb = 8;
  data->sel_sh = MAX1111_CTRL_SEL_SH;
  break;
 case 129:
  data->lsb = 16;
  data->sel_sh = MAX1110_CTRL_SEL_SH;
  break;
 case 128:
  data->lsb = 16;
  data->sel_sh = MAX1111_CTRL_SEL_SH;
  break;
 }
 err = setup_transfer(data);
 if (err)
  return err;

 mutex_init(&data->drvdata_lock);

 data->spi = spi;
 spi_set_drvdata(spi, data);

 err = sysfs_create_group(&spi->dev.kobj, &max1111_attr_group);
 if (err) {
  dev_err(&spi->dev, "failed to create attribute group\n");
  return err;
 }
 if (chip == 131 || chip == 129) {
  err = sysfs_create_group(&spi->dev.kobj, &max1110_attr_group);
  if (err) {
   dev_err(&spi->dev,
    "failed to create extended attribute group\n");
   goto err_remove;
  }
 }

 data->hwmon_dev = hwmon_device_register(&spi->dev);
 if (IS_ERR(data->hwmon_dev)) {
  dev_err(&spi->dev, "failed to create hwmon device\n");
  err = PTR_ERR(data->hwmon_dev);
  goto err_remove;
 }




 return 0;

err_remove:
 sysfs_remove_group(&spi->dev.kobj, &max1110_attr_group);
 sysfs_remove_group(&spi->dev.kobj, &max1111_attr_group);
 return err;
}
