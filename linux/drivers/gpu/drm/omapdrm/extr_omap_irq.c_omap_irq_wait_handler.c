
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_irq_wait {int wq; int count; } ;


 int wake_up (int *) ;

__attribute__((used)) static void omap_irq_wait_handler(struct omap_irq_wait *wait)
{
 wait->count--;
 wake_up(&wait->wq);
}
