
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irte {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {struct intel_ir_data* chip_data; } ;
struct intel_ir_data {int irq_2_iommu; } ;
typedef int entry ;


 int memset (struct irte*,int ,int) ;
 int modify_irte (int *,struct irte*) ;

__attribute__((used)) static void intel_irq_remapping_deactivate(struct irq_domain *domain,
        struct irq_data *irq_data)
{
 struct intel_ir_data *data = irq_data->chip_data;
 struct irte entry;

 memset(&entry, 0, sizeof(entry));
 modify_irte(&data->irq_2_iommu, &entry);
}
