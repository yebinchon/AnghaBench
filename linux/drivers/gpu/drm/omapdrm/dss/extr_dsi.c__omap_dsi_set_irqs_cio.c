
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isr_table_cio; } ;
struct dsi_data {TYPE_1__ isr_tables; } ;


 int ARRAY_SIZE (int ) ;
 int DSI_CIO_IRQ_ERROR_MASK ;
 int DSI_COMPLEXIO_IRQ_ENABLE ;
 int DSI_COMPLEXIO_IRQ_STATUS ;
 int _omap_dsi_configure_irqs (struct dsi_data*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _omap_dsi_set_irqs_cio(struct dsi_data *dsi)
{
 _omap_dsi_configure_irqs(dsi, dsi->isr_tables.isr_table_cio,
   ARRAY_SIZE(dsi->isr_tables.isr_table_cio),
   DSI_CIO_IRQ_ERROR_MASK,
   DSI_COMPLEXIO_IRQ_ENABLE, DSI_COMPLEXIO_IRQ_STATUS);
}
