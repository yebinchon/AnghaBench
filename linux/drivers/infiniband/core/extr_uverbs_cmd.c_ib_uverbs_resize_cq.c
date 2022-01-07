
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_resize_cq_resp {int cqe; } ;
struct ib_uverbs_resize_cq {int cqe; int cq_handle; } ;
struct ib_cq {int cqe; TYPE_2__* device; } ;
typedef int resp ;
typedef int cmd ;
struct TYPE_3__ {int (* resize_cq ) (struct ib_cq*,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int UVERBS_OBJECT_CQ ;
 int stub1 (struct ib_cq*,int ,int *) ;
 struct ib_cq* uobj_get_obj_read (struct ib_cq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_cq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_resize_cq*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_resize_cq_resp*,int) ;

__attribute__((used)) static int ib_uverbs_resize_cq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_resize_cq cmd;
 struct ib_uverbs_resize_cq_resp resp = {};
 struct ib_cq *cq;
 int ret = -EINVAL;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 cq = uobj_get_obj_read(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
 if (!cq)
  return -EINVAL;

 ret = cq->device->ops.resize_cq(cq, cmd.cqe, &attrs->driver_udata);
 if (ret)
  goto out;

 resp.cqe = cq->cqe;

 ret = uverbs_response(attrs, &resp, sizeof(resp));
out:
 uobj_put_obj_read(cq);

 return ret;
}
