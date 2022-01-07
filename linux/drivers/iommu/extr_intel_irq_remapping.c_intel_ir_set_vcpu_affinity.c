
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_data {int pi_desc_addr; int vector; } ;
struct irte {int p_pst; int pda_l; int pda_h; int p_vector; scalar_t__ p_urgent; } ;
struct irq_data {struct intel_ir_data* chip_data; } ;
struct intel_ir_data {int irq_2_iommu; struct irte irte_entry; } ;
typedef int irte_pi ;


 unsigned long PDA_HIGH_BIT ;
 int PDA_LOW_BIT ;
 int dmar_copy_shared_irte (struct irte*,struct irte*) ;
 int memset (struct irte*,int ,int) ;
 int modify_irte (int *,struct irte*) ;

__attribute__((used)) static int intel_ir_set_vcpu_affinity(struct irq_data *data, void *info)
{
 struct intel_ir_data *ir_data = data->chip_data;
 struct vcpu_data *vcpu_pi_info = info;


 if (!vcpu_pi_info) {
  modify_irte(&ir_data->irq_2_iommu, &ir_data->irte_entry);
 } else {
  struct irte irte_pi;
  memset(&irte_pi, 0, sizeof(irte_pi));
  dmar_copy_shared_irte(&irte_pi, &ir_data->irte_entry);


  irte_pi.p_pst = 1;
  irte_pi.p_urgent = 0;
  irte_pi.p_vector = vcpu_pi_info->vector;
  irte_pi.pda_l = (vcpu_pi_info->pi_desc_addr >>
    (32 - PDA_LOW_BIT)) & ~(-1UL << PDA_LOW_BIT);
  irte_pi.pda_h = (vcpu_pi_info->pi_desc_addr >> 32) &
    ~(-1UL << PDA_HIGH_BIT);

  modify_irte(&ir_data->irq_2_iommu, &irte_pi);
 }

 return 0;
}
