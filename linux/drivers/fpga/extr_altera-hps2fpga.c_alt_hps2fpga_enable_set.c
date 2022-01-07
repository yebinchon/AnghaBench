
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_bridge {int priv; } ;


 int _alt_hps2fpga_enable_set (int ,int) ;

__attribute__((used)) static int alt_hps2fpga_enable_set(struct fpga_bridge *bridge, bool enable)
{
 return _alt_hps2fpga_enable_set(bridge->priv, enable);
}
