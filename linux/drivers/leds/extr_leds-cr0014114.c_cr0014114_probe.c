
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct cr0014114 {size_t count; int do_recount; int work; int * dev; scalar_t__ delay; struct spi_device* spi; int lock; void* buf; } ;


 int CR_FW_DELAY_MSEC ;
 int CR_RECOUNT_DELAY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int cr0014114_probe_dt (struct cr0014114*) ;
 int cr0014114_recount_work ;
 int cr0014114_sync (struct cr0014114*) ;
 int dev_err (int *,char*,...) ;
 size_t device_get_child_node_count (int *) ;
 void* devm_kzalloc (int *,size_t,int ) ;
 scalar_t__ jiffies ;
 int leds ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_init (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int spi_set_drvdata (struct spi_device*,struct cr0014114*) ;
 size_t struct_size (struct cr0014114*,int ,size_t) ;

__attribute__((used)) static int cr0014114_probe(struct spi_device *spi)
{
 struct cr0014114 *priv;
 size_t count;
 int ret;

 count = device_get_child_node_count(&spi->dev);
 if (!count) {
  dev_err(&spi->dev, "LEDs are not defined in device tree!");
  return -ENODEV;
 }

 priv = devm_kzalloc(&spi->dev, struct_size(priv, leds, count),
       GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->buf = devm_kzalloc(&spi->dev, count + 2, GFP_KERNEL);
 if (!priv->buf)
  return -ENOMEM;

 mutex_init(&priv->lock);
 INIT_DELAYED_WORK(&priv->work, cr0014114_recount_work);
 priv->count = count;
 priv->dev = &spi->dev;
 priv->spi = spi;
 priv->delay = jiffies -
     msecs_to_jiffies(CR_FW_DELAY_MSEC);

 priv->do_recount = 1;
 ret = cr0014114_sync(priv);
 if (ret) {
  dev_err(priv->dev, "first recount failed %d\n", ret);
  return ret;
 }

 priv->do_recount = 1;
 ret = cr0014114_sync(priv);
 if (ret) {
  dev_err(priv->dev, "second recount failed %d\n", ret);
  return ret;
 }

 ret = cr0014114_probe_dt(priv);
 if (ret)
  return ret;


 schedule_delayed_work(&priv->work, CR_RECOUNT_DELAY);

 spi_set_drvdata(spi, priv);

 return 0;
}
