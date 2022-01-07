
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_bridge {struct altera_hps2fpga_data* priv; } ;
struct altera_hps2fpga_data {int bridge_reset; } ;


 int reset_control_status (int ) ;

__attribute__((used)) static int alt_hps2fpga_enable_show(struct fpga_bridge *bridge)
{
 struct altera_hps2fpga_data *priv = bridge->priv;

 return reset_control_status(priv->bridge_reset);
}
