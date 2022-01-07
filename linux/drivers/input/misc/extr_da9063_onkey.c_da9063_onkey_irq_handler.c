
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da906x_chip_config {unsigned int onkey_nonkey_mask; int onkey_status; } ;
struct da9063_onkey {int dev; int input; int work; scalar_t__ key_power; int regmap; struct da906x_chip_config* config; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int dev_dbg (int ,char*) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t da9063_onkey_irq_handler(int irq, void *data)
{
 struct da9063_onkey *onkey = data;
 const struct da906x_chip_config *config = onkey->config;
 unsigned int val;
 int error;

 error = regmap_read(onkey->regmap,
       config->onkey_status,
       &val);
 if (onkey->key_power && !error && (val & config->onkey_nonkey_mask)) {
  input_report_key(onkey->input, KEY_POWER, 1);
  input_sync(onkey->input);
  schedule_delayed_work(&onkey->work, 0);
  dev_dbg(onkey->dev, "KEY_POWER long press.\n");
 } else {
  input_report_key(onkey->input, KEY_POWER, 1);
  input_sync(onkey->input);
  input_report_key(onkey->input, KEY_POWER, 0);
  input_sync(onkey->input);
  dev_dbg(onkey->dev, "KEY_POWER short press.\n");
 }

 return IRQ_HANDLED;
}
