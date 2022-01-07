
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_ps2data {int irq; scalar_t__ reg_base; } ;
struct serio {struct sun4i_ps2data* port_data; } ;


 int PS2_GCTL_INTEN ;
 scalar_t__ PS2_REG_GCTL ;
 int readl (scalar_t__) ;
 int synchronize_irq (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sun4i_ps2_close(struct serio *serio)
{
 struct sun4i_ps2data *drvdata = serio->port_data;
 u32 rval;


 rval = readl(drvdata->reg_base + PS2_REG_GCTL);
 writel(rval & ~(PS2_GCTL_INTEN), drvdata->reg_base + PS2_REG_GCTL);

 synchronize_irq(drvdata->irq);
}
