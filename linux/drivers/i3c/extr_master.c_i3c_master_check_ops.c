
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_master_controller_ops {int recycle_ibi_slot; int free_ibi; int disable_ibi; int enable_ibi; scalar_t__ request_ibi; int i2c_xfers; int do_daa; int send_ccc_cmd; int priv_xfers; int bus_init; } ;


 int EINVAL ;

__attribute__((used)) static int i3c_master_check_ops(const struct i3c_master_controller_ops *ops)
{
 if (!ops || !ops->bus_init || !ops->priv_xfers ||
     !ops->send_ccc_cmd || !ops->do_daa || !ops->i2c_xfers)
  return -EINVAL;

 if (ops->request_ibi &&
     (!ops->enable_ibi || !ops->disable_ibi || !ops->free_ibi ||
      !ops->recycle_ibi_slot))
  return -EINVAL;

 return 0;
}
