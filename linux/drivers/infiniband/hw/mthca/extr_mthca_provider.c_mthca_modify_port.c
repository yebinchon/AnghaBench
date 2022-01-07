
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mthca_set_ib_param {int reset_qkey_viol; int cap_mask; scalar_t__ set_si_guid; } ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int cap_mask_mutex; } ;


 int ERESTARTSYS ;
 int IB_PORT_RESET_QKEY_CNTR ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int mthca_SET_IB (TYPE_1__*,struct mthca_set_ib_param*,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mthca_modify_port(struct ib_device *ibdev,
        u8 port, int port_modify_mask,
        struct ib_port_modify *props)
{
 struct mthca_set_ib_param set_ib;
 struct ib_port_attr attr;
 int err;

 if (mutex_lock_interruptible(&to_mdev(ibdev)->cap_mask_mutex))
  return -ERESTARTSYS;

 err = ib_query_port(ibdev, port, &attr);
 if (err)
  goto out;

 set_ib.set_si_guid = 0;
 set_ib.reset_qkey_viol = !!(port_modify_mask & IB_PORT_RESET_QKEY_CNTR);

 set_ib.cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) &
  ~props->clr_port_cap_mask;

 err = mthca_SET_IB(to_mdev(ibdev), &set_ib, port);
 if (err)
  goto out;
out:
 mutex_unlock(&to_mdev(ibdev)->cap_mask_mutex);
 return err;
}
