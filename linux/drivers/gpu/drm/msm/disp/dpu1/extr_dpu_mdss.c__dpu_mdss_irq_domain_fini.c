
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * domain; } ;
struct dpu_mdss {TYPE_1__ irq_controller; } ;


 int irq_domain_remove (int *) ;

__attribute__((used)) static void _dpu_mdss_irq_domain_fini(struct dpu_mdss *dpu_mdss)
{
 if (dpu_mdss->irq_controller.domain) {
  irq_domain_remove(dpu_mdss->irq_controller.domain);
  dpu_mdss->irq_controller.domain = ((void*)0);
 }
}
