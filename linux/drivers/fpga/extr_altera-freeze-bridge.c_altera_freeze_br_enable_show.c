
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_bridge {struct altera_freeze_br_data* priv; } ;
struct altera_freeze_br_data {int enable; } ;



__attribute__((used)) static int altera_freeze_br_enable_show(struct fpga_bridge *bridge)
{
 struct altera_freeze_br_data *priv = bridge->priv;

 return priv->enable;
}
