
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int CIRQ_MASK_CLR ;
 int irq_chip_unmask_parent (struct irq_data*) ;
 int mtk_cirq_write_mask (struct irq_data*,int ) ;

__attribute__((used)) static void mtk_cirq_unmask(struct irq_data *data)
{
 mtk_cirq_write_mask(data, CIRQ_MASK_CLR);
 irq_chip_unmask_parent(data);
}
