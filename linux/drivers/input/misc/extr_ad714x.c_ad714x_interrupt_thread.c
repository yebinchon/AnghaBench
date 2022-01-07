
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_chip {int mutex; TYPE_1__* hw; int l_state; int (* read ) (struct ad714x_chip*,int ,int *,int) ;} ;
typedef int irqreturn_t ;
struct TYPE_2__ {int button_num; int slider_num; int wheel_num; int touchpad_num; } ;


 int IRQ_HANDLED ;
 int STG_LOW_INT_STA_REG ;
 int ad714x_button_state_machine (struct ad714x_chip*,int) ;
 int ad714x_slider_state_machine (struct ad714x_chip*,int) ;
 int ad714x_touchpad_state_machine (struct ad714x_chip*,int) ;
 int ad714x_wheel_state_machine (struct ad714x_chip*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad714x_chip*,int ,int *,int) ;

__attribute__((used)) static irqreturn_t ad714x_interrupt_thread(int irq, void *data)
{
 struct ad714x_chip *ad714x = data;
 int i;

 mutex_lock(&ad714x->mutex);

 ad714x->read(ad714x, STG_LOW_INT_STA_REG, &ad714x->l_state, 3);

 for (i = 0; i < ad714x->hw->button_num; i++)
  ad714x_button_state_machine(ad714x, i);
 for (i = 0; i < ad714x->hw->slider_num; i++)
  ad714x_slider_state_machine(ad714x, i);
 for (i = 0; i < ad714x->hw->wheel_num; i++)
  ad714x_wheel_state_machine(ad714x, i);
 for (i = 0; i < ad714x->hw->touchpad_num; i++)
  ad714x_touchpad_state_machine(ad714x, i);

 mutex_unlock(&ad714x->mutex);

 return IRQ_HANDLED;
}
