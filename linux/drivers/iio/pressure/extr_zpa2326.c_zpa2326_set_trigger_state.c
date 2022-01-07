
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct zpa2326_private {TYPE_2__* frequency; int regmap; scalar_t__ waken; int irq; } ;
struct TYPE_4__ {int parent; } ;
struct iio_trigger {TYPE_1__ dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_6__ {int odr; } ;
struct TYPE_5__ {int odr; int hz; } ;


 scalar_t__ ZPA2326_CTRL_REG1_MASK_DATA_READY ;
 int ZPA2326_CTRL_REG1_REG ;
 int ZPA2326_CTRL_REG3_ENABLE_MEAS ;
 int ZPA2326_CTRL_REG3_REG ;
 int ZPA2326_INT_SOURCE_REG ;
 struct iio_dev* dev_get_drvdata (int ) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct zpa2326_private* iio_priv (struct iio_dev const*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 int zpa2326_dbg (struct iio_dev const*,char*,...) ;
 TYPE_3__* zpa2326_highest_frequency () ;

__attribute__((used)) static int zpa2326_set_trigger_state(struct iio_trigger *trig, bool state)
{
 const struct iio_dev *indio_dev = dev_get_drvdata(
       trig->dev.parent);
 const struct zpa2326_private *priv = iio_priv(indio_dev);
 int err;

 if (!state) {





  unsigned int val;
  disable_irq(priv->irq);





  err = regmap_write(priv->regmap, ZPA2326_CTRL_REG3_REG,
       zpa2326_highest_frequency()->odr);
  if (err)
   return err;






  err = regmap_read(priv->regmap, ZPA2326_INT_SOURCE_REG, &val);
  if (err < 0)
   return err;






  enable_irq(priv->irq);

  zpa2326_dbg(indio_dev, "continuous mode stopped");
 } else {





  if (priv->waken) {

   err = regmap_write(priv->regmap, ZPA2326_CTRL_REG1_REG,
        (u8)
        ~ZPA2326_CTRL_REG1_MASK_DATA_READY);
   if (err)
    return err;
  }


  err = regmap_write(priv->regmap, ZPA2326_CTRL_REG3_REG,
       ZPA2326_CTRL_REG3_ENABLE_MEAS |
       priv->frequency->odr);
  if (err)
   return err;

  zpa2326_dbg(indio_dev, "continuous mode setup @%dHz",
       priv->frequency->hz);
 }

 return 0;
}
