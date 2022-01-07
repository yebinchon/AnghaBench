
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct dpu_mdss* host_data; } ;
struct dpu_mdss {int dummy; } ;
typedef int irq_hw_number_t ;


 int dpu_mdss_irq_chip ;
 int dpu_mdss_lock_key ;
 int dpu_mdss_request_key ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct dpu_mdss*) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;

__attribute__((used)) static int dpu_mdss_irqdomain_map(struct irq_domain *domain,
  unsigned int irq, irq_hw_number_t hwirq)
{
 struct dpu_mdss *dpu_mdss = domain->host_data;

 irq_set_lockdep_class(irq, &dpu_mdss_lock_key, &dpu_mdss_request_key);
 irq_set_chip_and_handler(irq, &dpu_mdss_irq_chip, handle_level_irq);
 return irq_set_chip_data(irq, dpu_mdss);
}
