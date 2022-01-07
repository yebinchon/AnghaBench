
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_timers {int max_arr; int clk; int regmap; } ;
struct stm32_timer_trigger_cfg {unsigned int num_valids_table; scalar_t__** valids_table; } ;
struct stm32_timer_trigger {scalar_t__* valids; int triggers; int max_arr; int clk; int regmap; struct device* dev; } ;
struct device {TYPE_1__* driver; int of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int of_match_table; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct stm32_timers* dev_get_drvdata (int ) ;
 struct stm32_timer_trigger* devm_kzalloc (struct device*,int,int ) ;
 TYPE_2__* of_match_device (int ,struct device*) ;
 scalar_t__ of_property_read_u32 (int ,char*,unsigned int*) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_timer_trigger*) ;
 struct stm32_timer_trigger* stm32_setup_counter_device (struct device*) ;
 int stm32_setup_iio_triggers (struct stm32_timer_trigger*) ;
 int stm32_timer_detect_trgo2 (struct stm32_timer_trigger*) ;
 int * triggers_table ;

__attribute__((used)) static int stm32_timer_trigger_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct stm32_timer_trigger *priv;
 struct stm32_timers *ddata = dev_get_drvdata(pdev->dev.parent);
 const struct stm32_timer_trigger_cfg *cfg;
 unsigned int index;
 int ret;

 if (of_property_read_u32(dev->of_node, "reg", &index))
  return -EINVAL;

 cfg = (const struct stm32_timer_trigger_cfg *)
  of_match_device(dev->driver->of_match_table, dev)->data;

 if (index >= ARRAY_SIZE(triggers_table) ||
     index >= cfg->num_valids_table)
  return -EINVAL;


 if (*cfg->valids_table[index])
  priv = stm32_setup_counter_device(dev);
 else
  priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);

 if (!priv)
  return -ENOMEM;

 priv->dev = dev;
 priv->regmap = ddata->regmap;
 priv->clk = ddata->clk;
 priv->max_arr = ddata->max_arr;
 priv->triggers = triggers_table[index];
 priv->valids = cfg->valids_table[index];
 stm32_timer_detect_trgo2(priv);

 ret = stm32_setup_iio_triggers(priv);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, priv);

 return 0;
}
