
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int gic_handle_local_int (int) ;
 int gic_handle_shared_int (int) ;

__attribute__((used)) static void gic_irq_dispatch(struct irq_desc *desc)
{
 gic_handle_local_int(1);
 gic_handle_shared_int(1);
}
