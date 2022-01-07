
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8975_data {int data_ready_queue; int flags; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ak8975_irq_handler(int irq, void *data)
{
 struct ak8975_data *ak8975 = data;

 set_bit(0, &ak8975->flags);
 wake_up(&ak8975->data_ready_queue);

 return IRQ_HANDLED;
}
