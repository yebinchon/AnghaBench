
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_saradc {int completion; scalar_t__ regs; TYPE_1__* data; int last_val; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ num_bits; } ;


 int GENMASK (scalar_t__,int ) ;
 int IRQ_HANDLED ;
 scalar_t__ SARADC_CTRL ;
 scalar_t__ SARADC_DATA ;
 int complete (int *) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t rockchip_saradc_isr(int irq, void *dev_id)
{
 struct rockchip_saradc *info = dev_id;


 info->last_val = readl_relaxed(info->regs + SARADC_DATA);
 info->last_val &= GENMASK(info->data->num_bits - 1, 0);


 writel_relaxed(0, info->regs + SARADC_CTRL);

 complete(&info->completion);

 return IRQ_HANDLED;
}
