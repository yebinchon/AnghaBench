
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_wq_attr {int flags_mask; int flags; int wq_state; int curr_wq_state; } ;
struct ib_wq {TYPE_2__* device; } ;
struct ib_uverbs_ex_modify_wq {int attr_mask; int flags_mask; int flags; int wq_state; int curr_wq_state; int wq_handle; } ;
typedef int cmd ;
struct TYPE_3__ {int (* modify_wq ) (struct ib_wq*,struct ib_wq_attr*,int,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int IB_WQ_CUR_STATE ;
 int IB_WQ_FLAGS ;
 int IB_WQ_STATE ;
 int UVERBS_OBJECT_WQ ;
 int stub1 (struct ib_wq*,struct ib_wq_attr*,int,int *) ;
 struct ib_wq* uobj_get_obj_read (struct ib_wq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_wq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_wq*,int) ;

__attribute__((used)) static int ib_uverbs_ex_modify_wq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_modify_wq cmd;
 struct ib_wq *wq;
 struct ib_wq_attr wq_attr = {};
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (!cmd.attr_mask)
  return -EINVAL;

 if (cmd.attr_mask > (IB_WQ_STATE | IB_WQ_CUR_STATE | IB_WQ_FLAGS))
  return -EINVAL;

 wq = uobj_get_obj_read(wq, UVERBS_OBJECT_WQ, cmd.wq_handle, attrs);
 if (!wq)
  return -EINVAL;

 wq_attr.curr_wq_state = cmd.curr_wq_state;
 wq_attr.wq_state = cmd.wq_state;
 if (cmd.attr_mask & IB_WQ_FLAGS) {
  wq_attr.flags = cmd.flags;
  wq_attr.flags_mask = cmd.flags_mask;
 }
 ret = wq->device->ops.modify_wq(wq, &wq_attr, cmd.attr_mask,
     &attrs->driver_udata);
 uobj_put_obj_read(wq);
 return ret;
}
