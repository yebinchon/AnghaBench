
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int bcr; int dyn_addr; } ;
struct i3c_ccc_getbcr {int bcr; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int ENOMEM ;
 int I3C_CCC_GETBCR ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_getbcr* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_getbcr_locked(struct i3c_master_controller *master,
        struct i3c_device_info *info)
{
 struct i3c_ccc_getbcr *getbcr;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 getbcr = i3c_ccc_cmd_dest_init(&dest, info->dyn_addr, sizeof(*getbcr));
 if (!getbcr)
  return -ENOMEM;

 i3c_ccc_cmd_init(&cmd, 1, I3C_CCC_GETBCR, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 if (ret)
  goto out;

 info->bcr = getbcr->bcr;

out:
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
