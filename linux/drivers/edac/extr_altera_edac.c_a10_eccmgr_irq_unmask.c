
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct altr_arria10_edac {int ecc_mgr_map; } ;


 int A10_SYSMGR_ECC_INTMASK_CLR_OFST ;
 int BIT (int ) ;
 struct altr_arria10_edac* irq_data_get_irq_chip_data (struct irq_data*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void a10_eccmgr_irq_unmask(struct irq_data *d)
{
 struct altr_arria10_edac *edac = irq_data_get_irq_chip_data(d);

 regmap_write(edac->ecc_mgr_map, A10_SYSMGR_ECC_INTMASK_CLR_OFST,
       BIT(d->hwirq));
}
