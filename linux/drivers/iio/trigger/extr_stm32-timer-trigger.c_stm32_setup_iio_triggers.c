
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_timer_trigger {char** triggers; TYPE_2__* dev; int has_trgo2; } ;
struct TYPE_4__ {int groups; int parent; } ;
struct iio_trigger {TYPE_1__ dev; int * ops; } ;
struct TYPE_5__ {int parent; } ;


 int ENOMEM ;
 struct iio_trigger* devm_iio_trigger_alloc (TYPE_2__*,char*,char const* const) ;
 int devm_iio_trigger_register (TYPE_2__*,struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct stm32_timer_trigger*) ;
 int stm32_timer_is_trgo2_name (char const* const) ;
 int stm32_timer_is_trgo_name (char const* const) ;
 int stm32_trigger_attr_groups ;
 int timer_trigger_ops ;

__attribute__((used)) static int stm32_setup_iio_triggers(struct stm32_timer_trigger *priv)
{
 int ret;
 const char * const *cur = priv->triggers;

 while (cur && *cur) {
  struct iio_trigger *trig;
  bool cur_is_trgo = stm32_timer_is_trgo_name(*cur);
  bool cur_is_trgo2 = stm32_timer_is_trgo2_name(*cur);

  if (cur_is_trgo2 && !priv->has_trgo2) {
   cur++;
   continue;
  }

  trig = devm_iio_trigger_alloc(priv->dev, "%s", *cur);
  if (!trig)
   return -ENOMEM;

  trig->dev.parent = priv->dev->parent;
  trig->ops = &timer_trigger_ops;





  if (cur_is_trgo || cur_is_trgo2)
   trig->dev.groups = stm32_trigger_attr_groups;

  iio_trigger_set_drvdata(trig, priv);

  ret = devm_iio_trigger_register(priv->dev, trig);
  if (ret)
   return ret;
  cur++;
 }

 return 0;
}
