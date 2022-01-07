
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_events {int events; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int ENOMEM ;
 int I3C_BROADCAST_ADDR ;
 int I3C_CCC_DISEC (int) ;
 int I3C_CCC_ENEC (int) ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_events* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_enec_disec_locked(struct i3c_master_controller *master,
     u8 addr, bool enable, u8 evts)
{
 struct i3c_ccc_events *events;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 events = i3c_ccc_cmd_dest_init(&dest, addr, sizeof(*events));
 if (!events)
  return -ENOMEM;

 events->events = evts;
 i3c_ccc_cmd_init(&cmd, 0,
    enable ?
    I3C_CCC_ENEC(addr == I3C_BROADCAST_ADDR) :
    I3C_CCC_DISEC(addr == I3C_BROADCAST_ADDR),
    &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
