
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nokia_modem_device {int nokia_modem_rst_ind_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t nokia_modem_rst_ind_isr(int irq, void *data)
{
 struct nokia_modem_device *modem = (struct nokia_modem_device *)data;

 tasklet_schedule(&modem->nokia_modem_rst_ind_tasklet);

 return IRQ_HANDLED;
}
