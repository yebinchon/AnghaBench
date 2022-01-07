
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_modify_srq {int attr_mask; int srq_limit; int max_wr; int srq_handle; } ;
struct ib_srq_attr {int srq_limit; int max_wr; } ;
struct ib_srq {TYPE_2__* device; } ;
typedef int cmd ;
struct TYPE_3__ {int (* modify_srq ) (struct ib_srq*,struct ib_srq_attr*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int UVERBS_OBJECT_SRQ ;
 int stub1 (struct ib_srq*,struct ib_srq_attr*,int ,int *) ;
 struct ib_srq* uobj_get_obj_read (struct ib_srq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_srq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_modify_srq*,int) ;

__attribute__((used)) static int ib_uverbs_modify_srq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_modify_srq cmd;
 struct ib_srq *srq;
 struct ib_srq_attr attr;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 srq = uobj_get_obj_read(srq, UVERBS_OBJECT_SRQ, cmd.srq_handle, attrs);
 if (!srq)
  return -EINVAL;

 attr.max_wr = cmd.max_wr;
 attr.srq_limit = cmd.srq_limit;

 ret = srq->device->ops.modify_srq(srq, &attr, cmd.attr_mask,
       &attrs->driver_udata);

 uobj_put_obj_read(srq);

 return ret;
}
