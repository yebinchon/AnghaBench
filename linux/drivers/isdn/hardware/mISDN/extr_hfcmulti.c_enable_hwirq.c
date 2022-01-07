
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r_irq_ctrl; } ;
struct hfc_multi {TYPE_1__ hw; } ;


 int HFC_outb (struct hfc_multi*,int ,int ) ;
 int R_IRQ_CTRL ;
 int V_GLOB_IRQ_EN ;

__attribute__((used)) static void
enable_hwirq(struct hfc_multi *hc)
{
 hc->hw.r_irq_ctrl |= V_GLOB_IRQ_EN;
 HFC_outb(hc, R_IRQ_CTRL, hc->hw.r_irq_ctrl);
}
