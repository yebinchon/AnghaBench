
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int trig; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ST_UVIS25_REG_STATUS_ADDR ;
 int ST_UVIS25_REG_UV_DA_MASK ;
 int iio_trigger_poll_chained (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t st_uvis25_trigger_handler_thread(int irq, void *private)
{
 struct st_uvis25_hw *hw = private;
 int err, status;

 err = regmap_read(hw->regmap, ST_UVIS25_REG_STATUS_ADDR, &status);
 if (err < 0)
  return IRQ_HANDLED;

 if (!(status & ST_UVIS25_REG_UV_DA_MASK))
  return IRQ_NONE;

 iio_trigger_poll_chained(hw->trig);

 return IRQ_HANDLED;
}
