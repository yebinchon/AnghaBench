
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_fpga_port_ops {scalar_t__ owner; } ;


 int module_put (scalar_t__) ;

void dfl_fpga_port_ops_put(struct dfl_fpga_port_ops *ops)
{
 if (ops && ops->owner)
  module_put(ops->owner);
}
