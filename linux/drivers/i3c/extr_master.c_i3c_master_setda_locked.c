
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_setda {int addr; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int I3C_CCC_SETDASA ;
 int I3C_CCC_SETNEWDA ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_setda* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_setda_locked(struct i3c_master_controller *master,
       u8 oldaddr, u8 newaddr, bool setdasa)
{
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_setda *setda;
 struct i3c_ccc_cmd cmd;
 int ret;

 if (!oldaddr || !newaddr)
  return -EINVAL;

 setda = i3c_ccc_cmd_dest_init(&dest, oldaddr, sizeof(*setda));
 if (!setda)
  return -ENOMEM;

 setda->addr = newaddr << 1;
 i3c_ccc_cmd_init(&cmd, 0,
    setdasa ? I3C_CCC_SETDASA : I3C_CCC_SETNEWDA,
    &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
