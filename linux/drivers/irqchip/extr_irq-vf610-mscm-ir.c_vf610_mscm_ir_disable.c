
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_mscm_ir_chip_data {scalar_t__ mscm_ir_base; } ;
struct irq_data {struct vf610_mscm_ir_chip_data* chip_data; int hwirq; } ;
typedef int irq_hw_number_t ;


 scalar_t__ MSCM_IRSPRC (int ) ;
 int irq_chip_disable_parent (struct irq_data*) ;
 int writew_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vf610_mscm_ir_disable(struct irq_data *data)
{
 irq_hw_number_t hwirq = data->hwirq;
 struct vf610_mscm_ir_chip_data *chip_data = data->chip_data;

 writew_relaxed(0x0, chip_data->mscm_ir_base + MSCM_IRSPRC(hwirq));

 irq_chip_disable_parent(data);
}
