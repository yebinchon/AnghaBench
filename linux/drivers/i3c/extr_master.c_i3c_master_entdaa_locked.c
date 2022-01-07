
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int I3C_BROADCAST_ADDR ;
 int I3C_CCC_ENTDAA ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 int i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int ) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

int i3c_master_entdaa_locked(struct i3c_master_controller *master)
{
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 i3c_ccc_cmd_dest_init(&dest, I3C_BROADCAST_ADDR, 0);
 i3c_ccc_cmd_init(&cmd, 0, I3C_CCC_ENTDAA, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
