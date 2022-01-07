
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rt8973a_muic_info {int num_muic_irqs; int wq_detcable; TYPE_1__* dev; int edev; int irq_data; struct muic_irq* muic_irqs; int irq; int regmap; int irq_work; int mutex; void* num_reg_data; void* reg_data; struct i2c_client* i2c; } ;
struct muic_irq {int virq; int irq; int name; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 int DELAY_MS_DEFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_extcon_dev_allocate (TYPE_1__*,int ) ;
 int devm_extcon_dev_register (TYPE_1__*,int ) ;
 struct rt8973a_muic_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,int ,struct rt8973a_muic_info*) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt8973a_muic_info*) ;
 int msecs_to_jiffies (int ) ;
 int mutex_init (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_add_irq_chip (int ,int ,int,int ,int *,int *) ;
 int regmap_irq_get_virq (int ,int ) ;
 int rt8973a_extcon_cable ;
 int rt8973a_init_dev_type (struct rt8973a_muic_info*) ;
 int rt8973a_muic_detect_cable_wq ;
 int rt8973a_muic_irq_chip ;
 int rt8973a_muic_irq_handler ;
 int rt8973a_muic_irq_work ;
 void* rt8973a_muic_irqs ;
 int rt8973a_muic_regmap_config ;
 void* rt8973a_reg_data ;
 int system_power_efficient_wq ;

__attribute__((used)) static int rt8973a_muic_i2c_probe(struct i2c_client *i2c,
     const struct i2c_device_id *id)
{
 struct device_node *np = i2c->dev.of_node;
 struct rt8973a_muic_info *info;
 int i, ret, irq_flags;

 if (!np)
  return -EINVAL;

 info = devm_kzalloc(&i2c->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 i2c_set_clientdata(i2c, info);

 info->dev = &i2c->dev;
 info->i2c = i2c;
 info->irq = i2c->irq;
 info->muic_irqs = rt8973a_muic_irqs;
 info->num_muic_irqs = ARRAY_SIZE(rt8973a_muic_irqs);
 info->reg_data = rt8973a_reg_data;
 info->num_reg_data = ARRAY_SIZE(rt8973a_reg_data);

 mutex_init(&info->mutex);

 INIT_WORK(&info->irq_work, rt8973a_muic_irq_work);

 info->regmap = devm_regmap_init_i2c(i2c, &rt8973a_muic_regmap_config);
 if (IS_ERR(info->regmap)) {
  ret = PTR_ERR(info->regmap);
  dev_err(info->dev, "failed to allocate register map: %d\n",
       ret);
  return ret;
 }


 irq_flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT | IRQF_SHARED;
 ret = regmap_add_irq_chip(info->regmap, info->irq, irq_flags, 0,
      &rt8973a_muic_irq_chip, &info->irq_data);
 if (ret != 0) {
  dev_err(info->dev, "failed to add irq_chip (irq:%d, err:%d)\n",
        info->irq, ret);
  return ret;
 }

 for (i = 0; i < info->num_muic_irqs; i++) {
  struct muic_irq *muic_irq = &info->muic_irqs[i];
  int virq = 0;

  virq = regmap_irq_get_virq(info->irq_data, muic_irq->irq);
  if (virq <= 0)
   return -EINVAL;
  muic_irq->virq = virq;

  ret = devm_request_threaded_irq(info->dev, virq, ((void*)0),
      rt8973a_muic_irq_handler,
      IRQF_NO_SUSPEND | IRQF_ONESHOT,
      muic_irq->name, info);
  if (ret) {
   dev_err(info->dev,
    "failed: irq request (IRQ: %d, error :%d)\n",
    muic_irq->irq, ret);
   return ret;
  }
 }


 info->edev = devm_extcon_dev_allocate(info->dev, rt8973a_extcon_cable);
 if (IS_ERR(info->edev)) {
  dev_err(info->dev, "failed to allocate memory for extcon\n");
  return -ENOMEM;
 }


 ret = devm_extcon_dev_register(info->dev, info->edev);
 if (ret) {
  dev_err(info->dev, "failed to register extcon device\n");
  return ret;
 }
 INIT_DELAYED_WORK(&info->wq_detcable, rt8973a_muic_detect_cable_wq);
 queue_delayed_work(system_power_efficient_wq, &info->wq_detcable,
   msecs_to_jiffies(DELAY_MS_DEFAULT));


 rt8973a_init_dev_type(info);

 return 0;
}
