
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_hsp {unsigned int num_si; unsigned int* shared_irqs; unsigned int shared_irq; int dev; } ;


 int ENOENT ;
 int HSP_INT_IE (unsigned int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,...) ;
 int dev_name (int ) ;
 int devm_request_irq (int ,unsigned int,int ,int ,int ,struct tegra_hsp*) ;
 int tegra_hsp_shared_irq ;
 int tegra_hsp_writel (struct tegra_hsp*,int ,int ) ;

__attribute__((used)) static int tegra_hsp_request_shared_irq(struct tegra_hsp *hsp)
{
 unsigned int i, irq = 0;
 int err;

 for (i = 0; i < hsp->num_si; i++) {
  irq = hsp->shared_irqs[i];
  if (irq <= 0)
   continue;

  err = devm_request_irq(hsp->dev, irq, tegra_hsp_shared_irq, 0,
           dev_name(hsp->dev), hsp);
  if (err < 0) {
   dev_err(hsp->dev, "failed to request interrupt: %d\n",
    err);
   continue;
  }

  hsp->shared_irq = i;


  tegra_hsp_writel(hsp, 0, HSP_INT_IE(hsp->shared_irq));

  dev_dbg(hsp->dev, "interrupt requested: %u\n", irq);

  break;
 }

 if (i == hsp->num_si) {
  dev_err(hsp->dev, "failed to find available interrupt\n");
  return -ENOENT;
 }

 return 0;
}
