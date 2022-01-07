
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_reg_mr_resp {int mr_handle; int rkey; int lkey; } ;
struct ib_uverbs_reg_mr {int start; int hca_va; int access_flags; int length; int pd_handle; } ;
struct TYPE_8__ {int type; } ;
struct ib_uobject {int id; int rkey; int lkey; struct ib_uobject* object; TYPE_4__ res; struct ib_uobject* uobject; int * sig_attrs; int * dm; int type; struct ib_pd* pd; TYPE_3__* device; } ;
struct ib_pd {int usecnt; TYPE_3__* device; } ;
struct ib_mr {int id; int rkey; int lkey; struct ib_mr* object; TYPE_4__ res; struct ib_mr* uobject; int * sig_attrs; int * dm; int type; struct ib_pd* pd; TYPE_3__* device; } ;
struct ib_device {int dummy; } ;
typedef int resp ;
typedef int cmd ;
struct TYPE_6__ {struct ib_uobject* (* reg_user_mr ) (struct ib_pd*,int,int ,int,int,int *) ;} ;
struct TYPE_5__ {int device_cap_flags; } ;
struct TYPE_7__ {TYPE_2__ ops; TYPE_1__ attrs; } ;


 int EINVAL ;
 int IB_ACCESS_ON_DEMAND ;
 int IB_DEVICE_ON_DEMAND_PAGING ;
 int IB_MR_TYPE_USER ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int PAGE_MASK ;
 int PTR_ERR (struct ib_uobject*) ;
 int RDMA_RESTRACK_MR ;
 int UVERBS_OBJECT_MR ;
 int UVERBS_OBJECT_PD ;
 int atomic_inc (int *) ;
 int ib_check_mr_access (int) ;
 int ib_dereg_mr_user (struct ib_uobject*,int ) ;
 int memset (struct ib_uverbs_reg_mr_resp*,int ,int) ;
 int pr_debug (char*) ;
 int rdma_restrack_uadd (TYPE_4__*) ;
 struct ib_uobject* stub1 (struct ib_pd*,int,int ,int,int,int *) ;
 struct ib_uobject* uobj_alloc (int ,struct uverbs_attr_bundle*,struct ib_device**) ;
 int uobj_alloc_abort (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 int uobj_alloc_commit (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 struct ib_pd* uobj_get_obj_read (struct ib_pd*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_pd*) ;
 int uverbs_get_cleared_udata (struct uverbs_attr_bundle*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_reg_mr*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_reg_mr_resp*,int) ;

__attribute__((used)) static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_reg_mr cmd;
 struct ib_uverbs_reg_mr_resp resp;
 struct ib_uobject *uobj;
 struct ib_pd *pd;
 struct ib_mr *mr;
 int ret;
 struct ib_device *ib_dev;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
  return -EINVAL;

 ret = ib_check_mr_access(cmd.access_flags);
 if (ret)
  return ret;

 uobj = uobj_alloc(UVERBS_OBJECT_MR, attrs, &ib_dev);
 if (IS_ERR(uobj))
  return PTR_ERR(uobj);

 pd = uobj_get_obj_read(pd, UVERBS_OBJECT_PD, cmd.pd_handle, attrs);
 if (!pd) {
  ret = -EINVAL;
  goto err_free;
 }

 if (cmd.access_flags & IB_ACCESS_ON_DEMAND) {
  if (!(pd->device->attrs.device_cap_flags &
        IB_DEVICE_ON_DEMAND_PAGING)) {
   pr_debug("ODP support not available\n");
   ret = -EINVAL;
   goto err_put;
  }
 }

 mr = pd->device->ops.reg_user_mr(pd, cmd.start, cmd.length, cmd.hca_va,
      cmd.access_flags,
      &attrs->driver_udata);
 if (IS_ERR(mr)) {
  ret = PTR_ERR(mr);
  goto err_put;
 }

 mr->device = pd->device;
 mr->pd = pd;
 mr->type = IB_MR_TYPE_USER;
 mr->dm = ((void*)0);
 mr->sig_attrs = ((void*)0);
 mr->uobject = uobj;
 atomic_inc(&pd->usecnt);
 mr->res.type = RDMA_RESTRACK_MR;
 rdma_restrack_uadd(&mr->res);

 uobj->object = mr;

 memset(&resp, 0, sizeof resp);
 resp.lkey = mr->lkey;
 resp.rkey = mr->rkey;
 resp.mr_handle = uobj->id;

 ret = uverbs_response(attrs, &resp, sizeof(resp));
 if (ret)
  goto err_copy;

 uobj_put_obj_read(pd);

 return uobj_alloc_commit(uobj, attrs);

err_copy:
 ib_dereg_mr_user(mr, uverbs_get_cleared_udata(attrs));

err_put:
 uobj_put_obj_read(pd);

err_free:
 uobj_alloc_abort(uobj, attrs);
 return ret;
}
