
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct cdns_i3c_master {int dummy; } ;


 int cdns_i3c_master_disable (struct cdns_i3c_master*) ;
 struct cdns_i3c_master* to_cdns_i3c_master (struct i3c_master_controller*) ;

__attribute__((used)) static void cdns_i3c_master_bus_cleanup(struct i3c_master_controller *m)
{
 struct cdns_i3c_master *master = to_cdns_i3c_master(m);

 cdns_i3c_master_disable(master);
}
