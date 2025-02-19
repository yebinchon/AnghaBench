
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_cmd {scalar_t__ id; scalar_t__ rnw; } ;
struct dw_i3c_master {int dummy; } ;


 int EINVAL ;
 scalar_t__ I3C_CCC_ENTDAA ;
 int dw_i3c_ccc_get (struct dw_i3c_master*,struct i3c_ccc_cmd*) ;
 int dw_i3c_ccc_set (struct dw_i3c_master*,struct i3c_ccc_cmd*) ;
 struct dw_i3c_master* to_dw_i3c_master (struct i3c_master_controller*) ;

__attribute__((used)) static int dw_i3c_master_send_ccc_cmd(struct i3c_master_controller *m,
          struct i3c_ccc_cmd *ccc)
{
 struct dw_i3c_master *master = to_dw_i3c_master(m);
 int ret = 0;

 if (ccc->id == I3C_CCC_ENTDAA)
  return -EINVAL;

 if (ccc->rnw)
  ret = dw_i3c_ccc_get(master, ccc);
 else
  ret = dw_i3c_ccc_set(master, ccc);

 return ret;
}
