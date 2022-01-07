
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int dcr; int dyn_addr; } ;
struct i3c_ccc_getdcr {int dcr; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int ENOMEM ;
 int I3C_CCC_GETDCR ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_getdcr* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_getdcr_locked(struct i3c_master_controller *master,
        struct i3c_device_info *info)
{
 struct i3c_ccc_getdcr *getdcr;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 getdcr = i3c_ccc_cmd_dest_init(&dest, info->dyn_addr, sizeof(*getdcr));
 if (!getdcr)
  return -ENOMEM;

 i3c_ccc_cmd_init(&cmd, 1, I3C_CCC_GETDCR, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 if (ret)
  goto out;

 info->dcr = getdcr->dcr;

out:
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
