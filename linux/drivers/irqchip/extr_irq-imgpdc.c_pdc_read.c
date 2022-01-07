
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {scalar_t__ pdc_base; } ;


 unsigned int ioread32 (scalar_t__) ;

__attribute__((used)) static unsigned int pdc_read(struct pdc_intc_priv *priv,
        unsigned int reg_offs)
{
 return ioread32(priv->pdc_base + reg_offs);
}
