
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int domain; } ;
struct mdp5_mdss {TYPE_1__ irqcontroller; } ;
typedef int irqreturn_t ;
typedef int irq_hw_number_t ;


 int IRQ_HANDLED ;
 int REG_MDSS_HW_INTR_STATUS ;
 int VERB (char*,int) ;
 int fls (int) ;
 int generic_handle_irq (int ) ;
 int irq_find_mapping (int ,int) ;
 int mdss_read (struct mdp5_mdss*,int ) ;

__attribute__((used)) static irqreturn_t mdss_irq(int irq, void *arg)
{
 struct mdp5_mdss *mdp5_mdss = arg;
 u32 intr;

 intr = mdss_read(mdp5_mdss, REG_MDSS_HW_INTR_STATUS);

 VERB("intr=%08x", intr);

 while (intr) {
  irq_hw_number_t hwirq = fls(intr) - 1;

  generic_handle_irq(irq_find_mapping(
    mdp5_mdss->irqcontroller.domain, hwirq));
  intr &= ~(1 << hwirq);
 }

 return IRQ_HANDLED;
}
