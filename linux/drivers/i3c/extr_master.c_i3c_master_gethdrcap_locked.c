
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int hdr_cap; int dyn_addr; } ;
struct i3c_ccc_gethdrcap {int modes; } ;
struct TYPE_2__ {int len; } ;
struct i3c_ccc_cmd_dest {TYPE_1__ payload; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int I3C_CCC_GETHDRCAP ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_gethdrcap* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_gethdrcap_locked(struct i3c_master_controller *master,
           struct i3c_device_info *info)
{
 struct i3c_ccc_gethdrcap *gethdrcap;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 gethdrcap = i3c_ccc_cmd_dest_init(&dest, info->dyn_addr,
       sizeof(*gethdrcap));
 if (!gethdrcap)
  return -ENOMEM;

 i3c_ccc_cmd_init(&cmd, 1, I3C_CCC_GETHDRCAP, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 if (ret)
  goto out;

 if (dest.payload.len != 1) {
  ret = -EIO;
  goto out;
 }

 info->hdr_cap = gethdrcap->modes;

out:
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
