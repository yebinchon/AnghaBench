
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int dpc_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t i40iw_irq_handler(int irq, void *data)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)data;

 tasklet_schedule(&iwdev->dpc_tasklet);
 return IRQ_HANDLED;
}
