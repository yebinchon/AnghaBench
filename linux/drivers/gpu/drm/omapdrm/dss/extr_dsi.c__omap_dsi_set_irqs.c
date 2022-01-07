
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int isr_table; } ;
struct dsi_data {TYPE_1__ isr_tables; } ;


 int ARRAY_SIZE (int ) ;
 int DSI_IRQENABLE ;
 int DSI_IRQSTATUS ;
 int DSI_IRQ_ERROR_MASK ;
 int DSI_IRQ_TE_TRIGGER ;
 int _omap_dsi_configure_irqs (struct dsi_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _omap_dsi_set_irqs(struct dsi_data *dsi)
{
 u32 mask = DSI_IRQ_ERROR_MASK;



 _omap_dsi_configure_irqs(dsi, dsi->isr_tables.isr_table,
   ARRAY_SIZE(dsi->isr_tables.isr_table), mask,
   DSI_IRQENABLE, DSI_IRQSTATUS);
}
