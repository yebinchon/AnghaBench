
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int3496_data {int work; } ;
typedef int irqreturn_t ;


 int DEBOUNCE_TIME ;
 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t int3496_thread_isr(int irq, void *priv)
{
 struct int3496_data *data = priv;


 mod_delayed_work(system_wq, &data->work, DEBOUNCE_TIME);

 return IRQ_HANDLED;
}
