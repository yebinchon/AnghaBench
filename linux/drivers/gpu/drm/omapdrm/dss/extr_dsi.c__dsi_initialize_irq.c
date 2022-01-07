
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int irq_lock; int isr_tables; } ;


 int _omap_dsi_set_irqs (struct dsi_data*) ;
 int _omap_dsi_set_irqs_cio (struct dsi_data*) ;
 int _omap_dsi_set_irqs_vc (struct dsi_data*,int) ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void _dsi_initialize_irq(struct dsi_data *dsi)
{
 unsigned long flags;
 int vc;

 spin_lock_irqsave(&dsi->irq_lock, flags);

 memset(&dsi->isr_tables, 0, sizeof(dsi->isr_tables));

 _omap_dsi_set_irqs(dsi);
 for (vc = 0; vc < 4; ++vc)
  _omap_dsi_set_irqs_vc(dsi, vc);
 _omap_dsi_set_irqs_cio(dsi);

 spin_unlock_irqrestore(&dsi->irq_lock, flags);
}
