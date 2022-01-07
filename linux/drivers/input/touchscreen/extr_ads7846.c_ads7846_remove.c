
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct spi_device {TYPE_2__ dev; } ;
struct ads7846 {struct ads7846* packet; int filter_data; int (* filter_cleanup ) (int ) ;int gpio_pendown; int get_pendown_state; int reg; int input; TYPE_1__* spi; } ;
struct TYPE_3__ {int irq; } ;


 int ads7846_disable (struct ads7846*) ;
 int ads784x_attr_group ;
 int ads784x_hwmon_unregister (struct spi_device*,struct ads7846*) ;
 int dev_dbg (TYPE_2__*,char*) ;
 int free_irq (int ,struct ads7846*) ;
 int gpio_free (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct ads7846*) ;
 int regulator_put (int ) ;
 struct ads7846* spi_get_drvdata (struct spi_device*) ;
 int stub1 (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ads7846_remove(struct spi_device *spi)
{
 struct ads7846 *ts = spi_get_drvdata(spi);

 sysfs_remove_group(&spi->dev.kobj, &ads784x_attr_group);

 ads7846_disable(ts);
 free_irq(ts->spi->irq, ts);

 input_unregister_device(ts->input);

 ads784x_hwmon_unregister(spi, ts);

 regulator_put(ts->reg);

 if (!ts->get_pendown_state) {




  gpio_free(ts->gpio_pendown);
 }

 if (ts->filter_cleanup)
  ts->filter_cleanup(ts->filter_data);

 kfree(ts->packet);
 kfree(ts);

 dev_dbg(&spi->dev, "unregistered touchscreen\n");

 return 0;
}
