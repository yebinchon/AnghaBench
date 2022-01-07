
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct octeon_i2c {int ara; TYPE_1__ alert_data; int adap; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_setup_smbus_alert (int *,TYPE_1__*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;

__attribute__((used)) static int thunder_i2c_smbus_setup_of(struct octeon_i2c *i2c,
          struct device_node *node)
{
 if (!node)
  return -EINVAL;

 i2c->alert_data.irq = irq_of_parse_and_map(node, 0);
 if (!i2c->alert_data.irq)
  return -EINVAL;

 i2c->ara = i2c_setup_smbus_alert(&i2c->adap, &i2c->alert_data);
 if (!i2c->ara)
  return -ENODEV;
 return 0;
}
