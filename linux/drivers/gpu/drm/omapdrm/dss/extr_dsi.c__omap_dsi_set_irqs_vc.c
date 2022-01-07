
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * isr_table_vc; } ;
struct dsi_data {TYPE_1__ isr_tables; } ;


 int ARRAY_SIZE (int ) ;
 int DSI_VC_IRQENABLE (int) ;
 int DSI_VC_IRQSTATUS (int) ;
 int DSI_VC_IRQ_ERROR_MASK ;
 int _omap_dsi_configure_irqs (struct dsi_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _omap_dsi_set_irqs_vc(struct dsi_data *dsi, int vc)
{
 _omap_dsi_configure_irqs(dsi, dsi->isr_tables.isr_table_vc[vc],
   ARRAY_SIZE(dsi->isr_tables.isr_table_vc[vc]),
   DSI_VC_IRQ_ERROR_MASK,
   DSI_VC_IRQENABLE(vc), DSI_VC_IRQSTATUS(vc));
}
