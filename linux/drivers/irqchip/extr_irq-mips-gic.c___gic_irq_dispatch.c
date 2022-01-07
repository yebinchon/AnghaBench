
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gic_handle_local_int (int) ;
 int gic_handle_shared_int (int) ;

__attribute__((used)) static void __gic_irq_dispatch(void)
{
 gic_handle_local_int(0);
 gic_handle_shared_int(0);
}
