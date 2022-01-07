
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_master_controller {int dummy; } ;


 int i3c_master_enec_disec_locked (struct i3c_master_controller*,int ,int,int ) ;

int i3c_master_disec_locked(struct i3c_master_controller *master, u8 addr,
       u8 evts)
{
 return i3c_master_enec_disec_locked(master, addr, 0, evts);
}
