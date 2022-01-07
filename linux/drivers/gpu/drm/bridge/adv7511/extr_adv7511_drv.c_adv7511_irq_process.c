
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ encoder; } ;
struct adv7511 {int edid_read; int wq; TYPE_2__* i2c_main; int hpd_work; TYPE_1__ bridge; int regmap; } ;
struct TYPE_4__ {scalar_t__ irq; } ;


 unsigned int ADV7511_INT0_EDID_READY ;
 unsigned int ADV7511_INT0_HPD ;
 unsigned int ADV7511_INT1_DDC_ERROR ;
 int ADV7511_REG_INT (int) ;
 int adv7511_cec_irq_process (struct adv7511*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int schedule_work (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int adv7511_irq_process(struct adv7511 *adv7511, bool process_hpd)
{
 unsigned int irq0, irq1;
 int ret;

 ret = regmap_read(adv7511->regmap, ADV7511_REG_INT(0), &irq0);
 if (ret < 0)
  return ret;

 ret = regmap_read(adv7511->regmap, ADV7511_REG_INT(1), &irq1);
 if (ret < 0)
  return ret;

 regmap_write(adv7511->regmap, ADV7511_REG_INT(0), irq0);
 regmap_write(adv7511->regmap, ADV7511_REG_INT(1), irq1);

 if (process_hpd && irq0 & ADV7511_INT0_HPD && adv7511->bridge.encoder)
  schedule_work(&adv7511->hpd_work);

 if (irq0 & ADV7511_INT0_EDID_READY || irq1 & ADV7511_INT1_DDC_ERROR) {
  adv7511->edid_read = 1;

  if (adv7511->i2c_main->irq)
   wake_up_all(&adv7511->wq);
 }





 return 0;
}
