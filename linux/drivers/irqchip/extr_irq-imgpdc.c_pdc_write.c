
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_intc_priv {scalar_t__ pdc_base; } ;


 int iowrite32 (unsigned int,scalar_t__) ;

__attribute__((used)) static void pdc_write(struct pdc_intc_priv *priv, unsigned int reg_offs,
        unsigned int data)
{
 iowrite32(data, priv->pdc_base + reg_offs);
}
