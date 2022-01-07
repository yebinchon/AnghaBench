
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; int ufile; } ;
struct ib_wq_init_attr {int max_wr; int max_sge; int wq_context; int wq_type; int create_flags; int event_handler; struct ib_pd* cq; } ;
struct TYPE_9__ {int id; struct ib_wq* object; } ;
struct TYPE_8__ {TYPE_4__ uobject; int event_list; scalar_t__ events_reported; } ;
struct ib_wq {TYPE_3__ uevent; int wq_num; TYPE_4__* uobject; int usecnt; int wq_context; TYPE_2__* device; struct ib_pd* pd; struct ib_pd* cq; int wq_type; } ;
struct ib_uwq_object {TYPE_3__ uevent; int wq_num; TYPE_4__* uobject; int usecnt; int wq_context; TYPE_2__* device; struct ib_pd* pd; struct ib_pd* cq; int wq_type; } ;
struct ib_uverbs_ex_create_wq_resp {int response_length; int wqn; int max_wr; int max_sge; int wq_handle; } ;
struct ib_uverbs_ex_create_wq {int create_flags; int wq_type; int max_wr; int max_sge; int cq_handle; int pd_handle; scalar_t__ comp_mask; } ;
struct ib_pd {int usecnt; TYPE_2__* device; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int usecnt; TYPE_2__* device; } ;
typedef int resp ;
typedef int cmd ;
struct TYPE_6__ {struct ib_wq* (* create_wq ) (struct ib_pd*,struct ib_wq_init_attr*,int *) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_wq*) ;
 int PTR_ERR (struct ib_wq*) ;
 int UVERBS_OBJECT_CQ ;
 int UVERBS_OBJECT_PD ;
 int UVERBS_OBJECT_WQ ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int ib_destroy_wq (struct ib_wq*,int ) ;
 int ib_uverbs_wq_event_handler ;
 int memset (struct ib_uverbs_ex_create_wq_resp*,int ,int) ;
 struct ib_wq* stub1 (struct ib_pd*,struct ib_wq_init_attr*,int *) ;
 scalar_t__ uobj_alloc (int ,struct uverbs_attr_bundle*,struct ib_device**) ;
 int uobj_alloc_abort (TYPE_4__*,struct uverbs_attr_bundle*) ;
 int uobj_alloc_commit (TYPE_4__*,struct uverbs_attr_bundle*) ;
 struct ib_pd* uobj_get_obj_read (struct ib_pd*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_pd*) ;
 int uverbs_get_cleared_udata (struct uverbs_attr_bundle*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_wq*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_wq_resp*,int) ;
 int uverbs_response_length (struct uverbs_attr_bundle*,int) ;

__attribute__((used)) static int ib_uverbs_ex_create_wq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_create_wq cmd;
 struct ib_uverbs_ex_create_wq_resp resp = {};
 struct ib_uwq_object *obj;
 int err = 0;
 struct ib_cq *cq;
 struct ib_pd *pd;
 struct ib_wq *wq;
 struct ib_wq_init_attr wq_init_attr = {};
 struct ib_device *ib_dev;

 err = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (err)
  return err;

 if (cmd.comp_mask)
  return -EOPNOTSUPP;

 obj = (struct ib_uwq_object *)uobj_alloc(UVERBS_OBJECT_WQ, attrs,
       &ib_dev);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 pd = uobj_get_obj_read(pd, UVERBS_OBJECT_PD, cmd.pd_handle, attrs);
 if (!pd) {
  err = -EINVAL;
  goto err_uobj;
 }

 cq = uobj_get_obj_read(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
 if (!cq) {
  err = -EINVAL;
  goto err_put_pd;
 }

 wq_init_attr.cq = cq;
 wq_init_attr.max_sge = cmd.max_sge;
 wq_init_attr.max_wr = cmd.max_wr;
 wq_init_attr.wq_context = attrs->ufile;
 wq_init_attr.wq_type = cmd.wq_type;
 wq_init_attr.event_handler = ib_uverbs_wq_event_handler;
 wq_init_attr.create_flags = cmd.create_flags;
 obj->uevent.events_reported = 0;
 INIT_LIST_HEAD(&obj->uevent.event_list);

 wq = pd->device->ops.create_wq(pd, &wq_init_attr, &attrs->driver_udata);
 if (IS_ERR(wq)) {
  err = PTR_ERR(wq);
  goto err_put_cq;
 }

 wq->uobject = &obj->uevent.uobject;
 obj->uevent.uobject.object = wq;
 wq->wq_type = wq_init_attr.wq_type;
 wq->cq = cq;
 wq->pd = pd;
 wq->device = pd->device;
 wq->wq_context = wq_init_attr.wq_context;
 atomic_set(&wq->usecnt, 0);
 atomic_inc(&pd->usecnt);
 atomic_inc(&cq->usecnt);
 wq->uobject = &obj->uevent.uobject;
 obj->uevent.uobject.object = wq;

 memset(&resp, 0, sizeof(resp));
 resp.wq_handle = obj->uevent.uobject.id;
 resp.max_sge = wq_init_attr.max_sge;
 resp.max_wr = wq_init_attr.max_wr;
 resp.wqn = wq->wq_num;
 resp.response_length = uverbs_response_length(attrs, sizeof(resp));
 err = uverbs_response(attrs, &resp, sizeof(resp));
 if (err)
  goto err_copy;

 uobj_put_obj_read(pd);
 uobj_put_obj_read(cq);
 return uobj_alloc_commit(&obj->uevent.uobject, attrs);

err_copy:
 ib_destroy_wq(wq, uverbs_get_cleared_udata(attrs));
err_put_cq:
 uobj_put_obj_read(cq);
err_put_pd:
 uobj_put_obj_read(pd);
err_uobj:
 uobj_alloc_abort(&obj->uevent.uobject, attrs);

 return err;
}
