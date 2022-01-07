
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int max_read_turnaround; int max_write_ds; int max_read_ds; int dyn_addr; } ;
struct i3c_ccc_getmxds {int* maxrdturn; int maxwr; int maxrd; } ;
struct TYPE_2__ {int len; } ;
struct i3c_ccc_cmd_dest {TYPE_1__ payload; } ;
struct i3c_ccc_cmd {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int I3C_CCC_GETMXDS ;
 int i3c_ccc_cmd_dest_cleanup (struct i3c_ccc_cmd_dest*) ;
 struct i3c_ccc_getmxds* i3c_ccc_cmd_dest_init (struct i3c_ccc_cmd_dest*,int ,int) ;
 int i3c_ccc_cmd_init (struct i3c_ccc_cmd*,int,int ,struct i3c_ccc_cmd_dest*,int) ;
 int i3c_master_send_ccc_cmd_locked (struct i3c_master_controller*,struct i3c_ccc_cmd*) ;

__attribute__((used)) static int i3c_master_getmxds_locked(struct i3c_master_controller *master,
         struct i3c_device_info *info)
{
 struct i3c_ccc_getmxds *getmaxds;
 struct i3c_ccc_cmd_dest dest;
 struct i3c_ccc_cmd cmd;
 int ret;

 getmaxds = i3c_ccc_cmd_dest_init(&dest, info->dyn_addr,
      sizeof(*getmaxds));
 if (!getmaxds)
  return -ENOMEM;

 i3c_ccc_cmd_init(&cmd, 1, I3C_CCC_GETMXDS, &dest, 1);
 ret = i3c_master_send_ccc_cmd_locked(master, &cmd);
 if (ret)
  goto out;

 if (dest.payload.len != 2 && dest.payload.len != 5) {
  ret = -EIO;
  goto out;
 }

 info->max_read_ds = getmaxds->maxrd;
 info->max_write_ds = getmaxds->maxwr;
 if (dest.payload.len == 5)
  info->max_read_turnaround = getmaxds->maxrdturn[0] |
         ((u32)getmaxds->maxrdturn[1] << 8) |
         ((u32)getmaxds->maxrdturn[2] << 16);

out:
 i3c_ccc_cmd_dest_cleanup(&dest);

 return ret;
}
