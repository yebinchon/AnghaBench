
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intc_irqpin_priv {int sense_bitfield_width; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int INTC_IRQPIN_REG_SENSE ;
 int dev_dbg (int *,char*,int,int) ;
 int intc_irqpin_read_modify_write (struct intc_irqpin_priv*,int ,int,int,int) ;

__attribute__((used)) static int intc_irqpin_set_sense(struct intc_irqpin_priv *p, int irq, int value)
{

 int bitfield_width = p->sense_bitfield_width;
 int shift = 32 - (irq + 1) * bitfield_width;

 dev_dbg(&p->pdev->dev, "sense irq = %d, mode = %d\n", irq, value);

 if (value >= (1 << bitfield_width))
  return -EINVAL;

 intc_irqpin_read_modify_write(p, INTC_IRQPIN_REG_SENSE, shift,
          bitfield_width, value);
 return 0;
}
