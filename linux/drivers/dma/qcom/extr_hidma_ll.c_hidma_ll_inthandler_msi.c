
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_lldev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int hidma_ll_int_handler_internal (struct hidma_lldev*,int) ;

irqreturn_t hidma_ll_inthandler_msi(int chirq, void *arg, int cause)
{
 struct hidma_lldev *lldev = arg;

 hidma_ll_int_handler_internal(lldev, cause);
 return IRQ_HANDLED;
}
