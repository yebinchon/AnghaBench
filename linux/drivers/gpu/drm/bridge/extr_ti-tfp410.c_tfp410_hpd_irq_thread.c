
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410 {int hpd_work; } ;
typedef int irqreturn_t ;


 int HOTPLUG_DEBOUNCE_MS ;
 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t tfp410_hpd_irq_thread(int irq, void *arg)
{
 struct tfp410 *dvi = arg;

 mod_delayed_work(system_wq, &dvi->hpd_work,
   msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));

 return IRQ_HANDLED;
}
