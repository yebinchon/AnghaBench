
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_irq_intc {int domain; scalar_t__ reg_intpnd; } ;
struct pt_regs {int dummy; } ;


 int __ffs (int) ;
 int handle_domain_irq (int ,int,struct pt_regs*) ;
 int irq_domain_get_of_node (int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline int s3c24xx_handle_intc(struct s3c_irq_intc *intc,
          struct pt_regs *regs, int intc_offset)
{
 int pnd;
 int offset;

 pnd = readl_relaxed(intc->reg_intpnd);
 if (!pnd)
  return 0;


 if (!irq_domain_get_of_node(intc->domain))
  intc_offset = 0;
 offset = readl_relaxed(intc->reg_intpnd + 4);





 if (!(pnd & (1 << offset)))
  offset = __ffs(pnd);

 handle_domain_irq(intc->domain, intc_offset + offset, regs);
 return 1;
}
