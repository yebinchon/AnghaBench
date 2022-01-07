
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct dw_i3c_master {int dummy; } ;


 int dw_i3c_master_disable (struct dw_i3c_master*) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;

__attribute__((used)) static void dw_i3c_master_bus_cleanup(struct i3c_master_controller *m)
{
 struct dw_i3c_master *master = to_dw_i3c_master(m);

 dw_i3c_master_disable(master);
}
