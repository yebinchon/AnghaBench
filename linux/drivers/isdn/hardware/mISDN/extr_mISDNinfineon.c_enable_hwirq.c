
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {int start; int p; } ;
struct inf_hw {TYPE_2__ cfg; TYPE_1__* ci; } ;
struct TYPE_3__ {int typ; } ;


 scalar_t__ ELSA_IRQ_ADDR ;
 scalar_t__ GAZEL_HSCX_EN ;
 scalar_t__ GAZEL_INCSR ;
 scalar_t__ GAZEL_IPAC_EN ;
 scalar_t__ GAZEL_ISAC_EN ;
 scalar_t__ GAZEL_PCI_EN ;
 scalar_t__ NICCY_IRQ_CTRL_REG ;
 scalar_t__ NICCY_IRQ_ENABLE ;
 int PITA_INT0_ENABLE ;
 scalar_t__ QS1000_IRQ_ON ;
 scalar_t__ QS3000_IRQ_ON ;
 scalar_t__ SCT_PLX_IRQ_ADDR ;
 int SCT_PLX_IRQ_ENABLE ;
 scalar_t__ TIGER_AUX_IRQMASK ;
 scalar_t__ TIGER_IRQ_BIT ;
 scalar_t__ inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;
 int outl (scalar_t__,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
enable_hwirq(struct inf_hw *hw)
{
 u16 w;
 u32 val;

 switch (hw->ci->typ) {
 case 137:
 case 136:
  writel(PITA_INT0_ENABLE, hw->cfg.p);
  break;
 case 128:
 case 130:
  outb(TIGER_IRQ_BIT, (u32)hw->cfg.start + TIGER_AUX_IRQMASK);
  break;
 case 132:
  outb(QS1000_IRQ_ON, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
  break;
 case 131:
  outb(QS3000_IRQ_ON, (u32)hw->cfg.start + ELSA_IRQ_ADDR);
  break;
 case 133:
  val = inl((u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
  val |= NICCY_IRQ_ENABLE;
  outl(val, (u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
  break;
 case 129:
  w = inw((u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
  w |= SCT_PLX_IRQ_ENABLE;
  outw(w, (u32)hw->cfg.start + SCT_PLX_IRQ_ADDR);
  break;
 case 135:
  outb(GAZEL_ISAC_EN + GAZEL_HSCX_EN + GAZEL_PCI_EN,
       (u32)hw->cfg.start + GAZEL_INCSR);
  break;
 case 134:
  outb(GAZEL_IPAC_EN + GAZEL_PCI_EN,
       (u32)hw->cfg.start + GAZEL_INCSR);
  break;
 default:
  break;
 }
}
