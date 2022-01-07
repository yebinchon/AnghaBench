
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int pid; int dyn_addr; } ;
struct i3c_ccc_getpid {scalar_t__* pid; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int ENOMEM ;
 int I3C_CCC_GETPID ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_getpid* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_getpid_locked(struct i3c_master_controller *master,
        struct i3c_device_info *info)
{
 struct i3c_ccc_getpid *getpid;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret, i;

 getpid = i3c_ccc_cmd_dest_init(&dest, info->dyn_addr, sizeof(*getpid));
 if (!getpid)
  return -ENOMEM;

 i3c_ccc_cmd_init(&cmd, 1, I3C_CCC_GETPID, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 if (ret)
  goto out;

 info->pid = 0;
 for (i = 0; i < sizeof(getpid->pid); i++) {
  int sft = (sizeof(getpid->pid) - i - 1) * 8;

  info->pid |= (u64)getpid->pid[i] << sft;
 }

out:
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
