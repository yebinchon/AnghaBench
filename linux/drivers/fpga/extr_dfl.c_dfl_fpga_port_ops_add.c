
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_fpga_port_ops {int node; } ;


 int dfl_port_ops_list ;
 int dfl_port_ops_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dfl_fpga_port_ops_add(struct dfl_fpga_port_ops *ops)
{
 mutex_lock(&dfl_port_ops_mutex);
 list_add_tail(&ops->node, &dfl_port_ops_list);
 mutex_unlock(&dfl_port_ops_mutex);
}
