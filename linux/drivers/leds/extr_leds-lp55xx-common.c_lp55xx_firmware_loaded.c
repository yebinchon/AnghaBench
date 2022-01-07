
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lp55xx_chip {int engine_idx; struct firmware const* fw; int lock; TYPE_3__* cfg; TYPE_2__* engines; TYPE_1__* cl; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;
struct TYPE_6__ {int (* firmware_cb ) (struct lp55xx_chip*) ;} ;
struct TYPE_5__ {int mode; } ;
struct TYPE_4__ {struct device dev; } ;


 int LP55XX_ENGINE_LOAD ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int stub1 (struct lp55xx_chip*) ;

__attribute__((used)) static void lp55xx_firmware_loaded(const struct firmware *fw, void *context)
{
 struct lp55xx_chip *chip = context;
 struct device *dev = &chip->cl->dev;
 enum lp55xx_engine_index idx = chip->engine_idx;

 if (!fw) {
  dev_err(dev, "firmware request failed\n");
  return;
 }


 mutex_lock(&chip->lock);

 chip->engines[idx - 1].mode = LP55XX_ENGINE_LOAD;
 chip->fw = fw;
 if (chip->cfg->firmware_cb)
  chip->cfg->firmware_cb(chip);

 mutex_unlock(&chip->lock);


 release_firmware(chip->fw);
 chip->fw = ((void*)0);
}
