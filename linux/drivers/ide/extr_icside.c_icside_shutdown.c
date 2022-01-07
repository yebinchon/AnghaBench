
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icside_state {scalar_t__ ioc_base; } ;
struct expansion_card {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* irqdisable ) (struct expansion_card*,int ) ;} ;


 struct icside_state* ecard_get_drvdata (struct expansion_card*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stub1 (struct expansion_card*,int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void icside_shutdown(struct expansion_card *ec)
{
 struct icside_state *state = ecard_get_drvdata(ec);
 unsigned long flags;






 local_irq_save(flags);
 ec->ops->irqdisable(ec, 0);
 local_irq_restore(flags);






 if (state->ioc_base)
  writeb(0, state->ioc_base);
}
