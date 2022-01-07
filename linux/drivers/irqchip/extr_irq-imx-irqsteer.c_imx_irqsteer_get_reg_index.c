
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqsteer_data {unsigned long reg_num; } ;



__attribute__((used)) static int imx_irqsteer_get_reg_index(struct irqsteer_data *data,
          unsigned long irqnum)
{
 return (data->reg_num - irqnum / 32 - 1);
}
