
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
struct st_lsm6dsx_shub_settings {TYPE_2__ master_en; } ;
struct st_lsm6dsx_hw {int irq; int * iio_devs; struct device* dev; TYPE_1__* settings; struct regmap* regmap; void* buff; int page_lock; int conf_lock; int fifo_lock; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct st_lsm6dsx_shub_settings shub_settings; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ST_LSM6DSX_BUFF_SIZE ;
 int ST_LSM6DSX_ID_EXT0 ;
 int ST_LSM6DSX_ID_MAX ;
 int dev_set_drvdata (struct device*,void*) ;
 int devm_iio_device_register (struct device*,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int st_lsm6dsx_alloc_iiodev (struct st_lsm6dsx_hw*,int,char const*) ;
 int st_lsm6dsx_check_whoami (struct st_lsm6dsx_hw*,int,char const**) ;
 int st_lsm6dsx_fifo_setup (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_init_device (struct st_lsm6dsx_hw*) ;
 int st_lsm6dsx_shub_probe (struct st_lsm6dsx_hw*,char const*) ;

int st_lsm6dsx_probe(struct device *dev, int irq, int hw_id,
       struct regmap *regmap)
{
 const struct st_lsm6dsx_shub_settings *hub_settings;
 struct st_lsm6dsx_hw *hw;
 const char *name = ((void*)0);
 int i, err;

 hw = devm_kzalloc(dev, sizeof(*hw), GFP_KERNEL);
 if (!hw)
  return -ENOMEM;

 dev_set_drvdata(dev, (void *)hw);

 mutex_init(&hw->fifo_lock);
 mutex_init(&hw->conf_lock);
 mutex_init(&hw->page_lock);

 hw->buff = devm_kzalloc(dev, ST_LSM6DSX_BUFF_SIZE, GFP_KERNEL);
 if (!hw->buff)
  return -ENOMEM;

 hw->dev = dev;
 hw->irq = irq;
 hw->regmap = regmap;

 err = st_lsm6dsx_check_whoami(hw, hw_id, &name);
 if (err < 0)
  return err;

 for (i = 0; i < ST_LSM6DSX_ID_EXT0; i++) {
  hw->iio_devs[i] = st_lsm6dsx_alloc_iiodev(hw, i, name);
  if (!hw->iio_devs[i])
   return -ENOMEM;
 }

 err = st_lsm6dsx_init_device(hw);
 if (err < 0)
  return err;

 hub_settings = &hw->settings->shub_settings;
 if (hub_settings->master_en.addr) {
  err = st_lsm6dsx_shub_probe(hw, name);
  if (err < 0)
   return err;
 }

 if (hw->irq > 0) {
  err = st_lsm6dsx_fifo_setup(hw);
  if (err < 0)
   return err;
 }

 for (i = 0; i < ST_LSM6DSX_ID_MAX; i++) {
  if (!hw->iio_devs[i])
   continue;

  err = devm_iio_device_register(hw->dev, hw->iio_devs[i]);
  if (err)
   return err;
 }

 return 0;
}
