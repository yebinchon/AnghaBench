
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRIG_BASE (unsigned long) ;
 unsigned int TRIG_VAL (unsigned long,unsigned long) ;
 unsigned int TRIG_VAL_MSK (unsigned long) ;
 unsigned int readl_relaxed (int ) ;
 int setup_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel_relaxed (unsigned int,int ) ;

__attribute__((used)) static void setup_trigger(unsigned long irq, unsigned long trigger)
{
 unsigned int tmp;

 spin_lock(&setup_lock);


 tmp = readl_relaxed(TRIG_BASE(irq)) & TRIG_VAL_MSK(irq);

 writel_relaxed(tmp | TRIG_VAL(trigger, irq), TRIG_BASE(irq));

 spin_unlock(&setup_lock);
}
