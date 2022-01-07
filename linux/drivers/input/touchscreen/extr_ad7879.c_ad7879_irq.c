
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7879 {int timer; int dev; int conversion_data; int regmap; } ;
typedef int irqreturn_t ;


 int AD7879_NR_SENSE ;
 int AD7879_REG_XPLUS ;
 int IRQ_HANDLED ;
 scalar_t__ TS_PEN_UP_TIMEOUT ;
 int ad7879_report (struct ad7879*) ;
 int dev_err_ratelimited (int ,char*,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int regmap_bulk_read (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ad7879_irq(int irq, void *handle)
{
 struct ad7879 *ts = handle;
 int error;

 error = regmap_bulk_read(ts->regmap, AD7879_REG_XPLUS,
     ts->conversion_data, AD7879_NR_SENSE);
 if (error)
  dev_err_ratelimited(ts->dev, "failed to read %#02x: %d\n",
        AD7879_REG_XPLUS, error);
 else if (!ad7879_report(ts))
  mod_timer(&ts->timer, jiffies + TS_PEN_UP_TIMEOUT);

 return IRQ_HANDLED;
}
