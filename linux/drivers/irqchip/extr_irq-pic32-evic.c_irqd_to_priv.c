
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* domain; } ;
struct evic_chip_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ host_data; } ;



__attribute__((used)) static struct evic_chip_data *irqd_to_priv(struct irq_data *data)
{
 return (struct evic_chip_data *)data->domain->host_data;
}
