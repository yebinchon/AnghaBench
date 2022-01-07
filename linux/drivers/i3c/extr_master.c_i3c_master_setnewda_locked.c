
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_master_controller {int dummy; } ;


 int i3c_master_setda_locked (struct i3c_master_controller*,int ,int ,int) ;

__attribute__((used)) static int i3c_master_setnewda_locked(struct i3c_master_controller *master,
          u8 oldaddr, u8 newaddr)
{
 return i3c_master_setda_locked(master, oldaddr, newaddr, 0);
}
