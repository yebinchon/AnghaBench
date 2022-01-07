
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {int irq_route; int nr_syswakes; } ;


 unsigned int PDC_IRQ_ENABLE ;
 unsigned int PDC_IRQ_ROUTE ;
 int PDC_IRQ_ROUTE_EXT_EN_SYS0 ;
 int PDC_SYS_WAKE_BASE ;
 unsigned int PDC_SYS_WAKE_INT_MODE_SHIFT ;
 unsigned int PDC_SYS_WAKE_INT_NONE ;
 int PDC_SYS_WAKE_STRIDE ;
 int pdc_write (struct pdc_intc_priv*,unsigned int,unsigned int) ;

__attribute__((used)) static void pdc_intc_setup(struct pdc_intc_priv *priv)
{
 int i;
 unsigned int soc_sys_wake_regoff;
 unsigned int soc_sys_wake;





 pdc_write(priv, PDC_IRQ_ENABLE, 0);





 priv->irq_route = ((PDC_IRQ_ROUTE_EXT_EN_SYS0 << priv->nr_syswakes) -
    PDC_IRQ_ROUTE_EXT_EN_SYS0);
 pdc_write(priv, PDC_IRQ_ROUTE, priv->irq_route);


 for (i = 0; i < priv->nr_syswakes; ++i) {

  soc_sys_wake_regoff = PDC_SYS_WAKE_BASE + i*PDC_SYS_WAKE_STRIDE;
  soc_sys_wake = PDC_SYS_WAKE_INT_NONE
    << PDC_SYS_WAKE_INT_MODE_SHIFT;
  pdc_write(priv, soc_sys_wake_regoff, soc_sys_wake);
 }
}
