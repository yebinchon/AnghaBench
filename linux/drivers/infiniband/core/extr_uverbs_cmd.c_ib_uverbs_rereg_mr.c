
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct ib_uverbs_rereg_mr_resp {int rkey; int lkey; } ;
struct ib_uverbs_rereg_mr {int flags; int start; int hca_va; scalar_t__ length; int access_flags; int pd_handle; int mr_handle; } ;
struct ib_uobject {struct ib_mr* object; } ;
struct ib_pd {int usecnt; } ;
struct ib_mr {int rkey; int lkey; struct ib_pd* pd; TYPE_2__* device; scalar_t__ dm; } ;
typedef int resp ;
typedef int cmd ;
struct TYPE_3__ {int (* rereg_user_mr ) (struct ib_mr*,int,int,scalar_t__,int,int ,struct ib_pd*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int IB_MR_REREG_ACCESS ;
 int IB_MR_REREG_PD ;
 int IB_MR_REREG_SUPPORTED ;
 int IB_MR_REREG_TRANS ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int PAGE_MASK ;
 int PTR_ERR (struct ib_uobject*) ;
 int UVERBS_OBJECT_MR ;
 int UVERBS_OBJECT_PD ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ib_check_mr_access (int ) ;
 int memset (struct ib_uverbs_rereg_mr_resp*,int ,int) ;
 int stub1 (struct ib_mr*,int,int,scalar_t__,int,int ,struct ib_pd*,int *) ;
 struct ib_pd* uobj_get_obj_read (struct ib_pd*,int ,int ,struct uverbs_attr_bundle*) ;
 struct ib_uobject* uobj_get_write (int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_pd*) ;
 int uobj_put_write (struct ib_uobject*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_rereg_mr*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_rereg_mr_resp*,int) ;

__attribute__((used)) static int ib_uverbs_rereg_mr(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_rereg_mr cmd;
 struct ib_uverbs_rereg_mr_resp resp;
 struct ib_pd *pd = ((void*)0);
 struct ib_mr *mr;
 struct ib_pd *old_pd;
 int ret;
 struct ib_uobject *uobj;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (cmd.flags & ~IB_MR_REREG_SUPPORTED || !cmd.flags)
  return -EINVAL;

 if ((cmd.flags & IB_MR_REREG_TRANS) &&
     (!cmd.start || !cmd.hca_va || 0 >= cmd.length ||
      (cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK)))
   return -EINVAL;

 uobj = uobj_get_write(UVERBS_OBJECT_MR, cmd.mr_handle, attrs);
 if (IS_ERR(uobj))
  return PTR_ERR(uobj);

 mr = uobj->object;

 if (mr->dm) {
  ret = -EINVAL;
  goto put_uobjs;
 }

 if (cmd.flags & IB_MR_REREG_ACCESS) {
  ret = ib_check_mr_access(cmd.access_flags);
  if (ret)
   goto put_uobjs;
 }

 if (cmd.flags & IB_MR_REREG_PD) {
  pd = uobj_get_obj_read(pd, UVERBS_OBJECT_PD, cmd.pd_handle,
           attrs);
  if (!pd) {
   ret = -EINVAL;
   goto put_uobjs;
  }
 }

 old_pd = mr->pd;
 ret = mr->device->ops.rereg_user_mr(mr, cmd.flags, cmd.start,
         cmd.length, cmd.hca_va,
         cmd.access_flags, pd,
         &attrs->driver_udata);
 if (ret)
  goto put_uobj_pd;

 if (cmd.flags & IB_MR_REREG_PD) {
  atomic_inc(&pd->usecnt);
  mr->pd = pd;
  atomic_dec(&old_pd->usecnt);
 }

 memset(&resp, 0, sizeof(resp));
 resp.lkey = mr->lkey;
 resp.rkey = mr->rkey;

 ret = uverbs_response(attrs, &resp, sizeof(resp));

put_uobj_pd:
 if (cmd.flags & IB_MR_REREG_PD)
  uobj_put_obj_read(pd);

put_uobjs:
 uobj_put_write(uobj);

 return ret;
}
