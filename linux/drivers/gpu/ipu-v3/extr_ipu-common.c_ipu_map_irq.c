
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int domain; } ;


 int irq_create_mapping (int ,int) ;
 int irq_linear_revmap (int ,int) ;

int ipu_map_irq(struct ipu_soc *ipu, int irq)
{
 int virq;

 virq = irq_linear_revmap(ipu->domain, irq);
 if (!virq)
  virq = irq_create_mapping(ipu->domain, irq);

 return virq;
}
