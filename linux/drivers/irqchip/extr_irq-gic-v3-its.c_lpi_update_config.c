
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct its_device {int dummy; } ;
struct irq_data {int dummy; } ;


 struct its_device* irq_data_get_irq_chip_data (struct irq_data*) ;
 int its_get_event_id (struct irq_data*) ;
 int its_send_inv (struct its_device*,int ) ;
 int lpi_write_config (struct irq_data*,int ,int ) ;

__attribute__((used)) static void lpi_update_config(struct irq_data *d, u8 clr, u8 set)
{
 struct its_device *its_dev = irq_data_get_irq_chip_data(d);

 lpi_write_config(d, clr, set);
 its_send_inv(its_dev, its_get_event_id(d));
}
