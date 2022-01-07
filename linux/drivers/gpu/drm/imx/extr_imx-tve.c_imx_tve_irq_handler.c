
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_tve {int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TVE_STAT_REG ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t imx_tve_irq_handler(int irq, void *data)
{
 struct imx_tve *tve = data;
 unsigned int val;

 regmap_read(tve->regmap, TVE_STAT_REG, &val);


 regmap_write(tve->regmap, TVE_STAT_REG, 0xffffffff);

 return IRQ_HANDLED;
}
