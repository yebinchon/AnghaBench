
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_client {int dummy; } ;


 int imx_sc_irq_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void imx_scu_irq_callback(struct mbox_client *c, void *msg)
{
 schedule_work(&imx_sc_irq_work);
}
