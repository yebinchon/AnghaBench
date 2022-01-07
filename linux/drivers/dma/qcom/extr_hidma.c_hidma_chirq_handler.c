
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_lldev {int dummy; } ;
typedef int irqreturn_t ;


 int hidma_ll_inthandler (int,struct hidma_lldev*) ;

__attribute__((used)) static irqreturn_t hidma_chirq_handler(int chirq, void *arg)
{
 struct hidma_lldev *lldev = arg;





 return hidma_ll_inthandler(chirq, lldev);
}
