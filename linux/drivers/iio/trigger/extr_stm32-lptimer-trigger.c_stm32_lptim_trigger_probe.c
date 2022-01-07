
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stm32_lptim_trigger {int trg; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct stm32_lptim_trigger* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,size_t*) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_lptim_trigger*) ;
 int stm32_lptim_setup_trig (struct stm32_lptim_trigger*) ;
 int * stm32_lptim_triggers ;

__attribute__((used)) static int stm32_lptim_trigger_probe(struct platform_device *pdev)
{
 struct stm32_lptim_trigger *priv;
 u32 index;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 if (of_property_read_u32(pdev->dev.of_node, "reg", &index))
  return -EINVAL;

 if (index >= ARRAY_SIZE(stm32_lptim_triggers))
  return -EINVAL;

 priv->dev = &pdev->dev;
 priv->trg = stm32_lptim_triggers[index];

 ret = stm32_lptim_setup_trig(priv);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, priv);

 return 0;
}
