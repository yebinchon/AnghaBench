
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct cht_wc_i2c_adap {int irqchip_lock; } ;


 struct cht_wc_i2c_adap* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void cht_wc_i2c_irq_lock(struct irq_data *data)
{
 struct cht_wc_i2c_adap *adap = irq_data_get_irq_chip_data(data);

 mutex_lock(&adap->irqchip_lock);
}
