
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lineevent_state {int timestamp; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int ktime_get_real_ns () ;

__attribute__((used)) static irqreturn_t lineevent_irq_handler(int irq, void *p)
{
 struct lineevent_state *le = p;





 le->timestamp = ktime_get_real_ns();

 return IRQ_WAKE_THREAD;
}
