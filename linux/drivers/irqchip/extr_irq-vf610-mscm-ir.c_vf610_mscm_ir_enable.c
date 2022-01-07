
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vf610_mscm_ir_chip_data {int cpu_mask; scalar_t__ mscm_ir_base; } ;
struct irq_data {struct vf610_mscm_ir_chip_data* chip_data; int hwirq; } ;
typedef int irq_hw_number_t ;


 scalar_t__ MSCM_IRSPRC (int ) ;
 int MSCM_IRSPRC_CPEN_MASK ;
 int WARN_ON (int) ;
 int irq_chip_enable_parent (struct irq_data*) ;
 int readw_relaxed (scalar_t__) ;
 int writew_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vf610_mscm_ir_enable(struct irq_data *data)
{
 irq_hw_number_t hwirq = data->hwirq;
 struct vf610_mscm_ir_chip_data *chip_data = data->chip_data;
 u16 irsprc;

 irsprc = readw_relaxed(chip_data->mscm_ir_base + MSCM_IRSPRC(hwirq));
 irsprc &= MSCM_IRSPRC_CPEN_MASK;

 WARN_ON(irsprc & ~chip_data->cpu_mask);

 writew_relaxed(chip_data->cpu_mask,
         chip_data->mscm_ir_base + MSCM_IRSPRC(hwirq));

 irq_chip_enable_parent(data);
}
