
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* intr_op; } ;
struct TYPE_2__ {int (* free_syncpt_irq ) (struct host1x*) ;} ;


 int stub1 (struct host1x*) ;

__attribute__((used)) static inline int host1x_hw_intr_free_syncpt_irq(struct host1x *host)
{
 return host->intr_op->free_syncpt_irq(host);
}
