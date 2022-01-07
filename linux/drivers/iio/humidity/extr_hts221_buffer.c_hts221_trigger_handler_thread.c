
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts221_hw {int trig; int regmap; } ;
typedef int irqreturn_t ;


 int HTS221_REG_STATUS_ADDR ;
 int HTS221_RH_DRDY_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int iio_trigger_poll_chained (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t hts221_trigger_handler_thread(int irq, void *private)
{
 struct hts221_hw *hw = private;
 int err, status;

 err = regmap_read(hw->regmap, HTS221_REG_STATUS_ADDR, &status);
 if (err < 0)
  return IRQ_HANDLED;







 if (!(status & HTS221_RH_DRDY_MASK))
  return IRQ_NONE;

 iio_trigger_poll_chained(hw->trig);

 return IRQ_HANDLED;
}
