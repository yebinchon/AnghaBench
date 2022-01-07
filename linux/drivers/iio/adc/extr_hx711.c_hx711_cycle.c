
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx711_data {int gpiod_dout; int data_ready_delay_ns; int gpiod_pd_sck; } ;


 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int ndelay (int ) ;

__attribute__((used)) static int hx711_cycle(struct hx711_data *hx711_data)
{
 unsigned long flags;






 local_irq_save(flags);
 gpiod_set_value(hx711_data->gpiod_pd_sck, 1);






 ndelay(hx711_data->data_ready_delay_ns);







 gpiod_set_value(hx711_data->gpiod_pd_sck, 0);
 local_irq_restore(flags);





 ndelay(hx711_data->data_ready_delay_ns);


 return gpiod_get_value(hx711_data->gpiod_dout);
}
