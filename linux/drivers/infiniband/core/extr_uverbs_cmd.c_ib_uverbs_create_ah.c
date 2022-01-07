
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uverbs_attr_bundle {int driver_udata; } ;
struct rdma_ah_attr {int type; } ;
struct ib_uverbs_create_ah_resp {int ah_handle; } ;
struct TYPE_3__ {int dgid; int traffic_class; int hop_limit; int sgid_index; int flow_label; } ;
struct TYPE_4__ {TYPE_1__ grh; scalar_t__ is_global; int port_num; int static_rate; int src_path_bits; int sl; int dlid; } ;
struct ib_uverbs_create_ah {int user_handle; TYPE_2__ attr; int pd_handle; } ;
struct ib_uobject {int id; struct ib_uobject* object; int user_handle; struct ib_uobject* uobject; } ;
struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_ah {int id; struct ib_ah* object; int user_handle; struct ib_ah* uobject; } ;
typedef int resp ;
typedef int cmd ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct ib_uobject*) ;
 int PTR_ERR (struct ib_uobject*) ;
 int RDMA_DESTROY_AH_SLEEPABLE ;
 int UVERBS_OBJECT_AH ;
 int UVERBS_OBJECT_PD ;
 int rdma_ah_find_type (struct ib_device*,int ) ;
 int rdma_ah_set_ah_flags (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dgid_raw (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_dlid (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int ,int ,int ,int ) ;
 int rdma_ah_set_make_grd (struct rdma_ah_attr*,int) ;
 int rdma_ah_set_path_bits (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_port_num (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_sl (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_static_rate (struct rdma_ah_attr*,int ) ;
 struct ib_uobject* rdma_create_user_ah (struct ib_pd*,struct rdma_ah_attr*,int *) ;
 int rdma_destroy_ah_user (struct ib_uobject*,int ,int ) ;
 int rdma_is_port_valid (struct ib_device*,int ) ;
 struct ib_uobject* uobj_alloc (int ,struct uverbs_attr_bundle*,struct ib_device**) ;
 int uobj_alloc_abort (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 int uobj_alloc_commit (struct ib_uobject*,struct uverbs_attr_bundle*) ;
 struct ib_pd* uobj_get_obj_read (struct ib_pd*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_pd*) ;
 int uverbs_get_cleared_udata (struct uverbs_attr_bundle*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_create_ah*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_create_ah_resp*,int) ;

__attribute__((used)) static int ib_uverbs_create_ah(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_create_ah cmd;
 struct ib_uverbs_create_ah_resp resp;
 struct ib_uobject *uobj;
 struct ib_pd *pd;
 struct ib_ah *ah;
 struct rdma_ah_attr attr = {};
 int ret;
 struct ib_device *ib_dev;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 uobj = uobj_alloc(UVERBS_OBJECT_AH, attrs, &ib_dev);
 if (IS_ERR(uobj))
  return PTR_ERR(uobj);

 if (!rdma_is_port_valid(ib_dev, cmd.attr.port_num)) {
  ret = -EINVAL;
  goto err;
 }

 pd = uobj_get_obj_read(pd, UVERBS_OBJECT_PD, cmd.pd_handle, attrs);
 if (!pd) {
  ret = -EINVAL;
  goto err;
 }

 attr.type = rdma_ah_find_type(ib_dev, cmd.attr.port_num);
 rdma_ah_set_make_grd(&attr, 0);
 rdma_ah_set_dlid(&attr, cmd.attr.dlid);
 rdma_ah_set_sl(&attr, cmd.attr.sl);
 rdma_ah_set_path_bits(&attr, cmd.attr.src_path_bits);
 rdma_ah_set_static_rate(&attr, cmd.attr.static_rate);
 rdma_ah_set_port_num(&attr, cmd.attr.port_num);

 if (cmd.attr.is_global) {
  rdma_ah_set_grh(&attr, ((void*)0), cmd.attr.grh.flow_label,
    cmd.attr.grh.sgid_index,
    cmd.attr.grh.hop_limit,
    cmd.attr.grh.traffic_class);
  rdma_ah_set_dgid_raw(&attr, cmd.attr.grh.dgid);
 } else {
  rdma_ah_set_ah_flags(&attr, 0);
 }

 ah = rdma_create_user_ah(pd, &attr, &attrs->driver_udata);
 if (IS_ERR(ah)) {
  ret = PTR_ERR(ah);
  goto err_put;
 }

 ah->uobject = uobj;
 uobj->user_handle = cmd.user_handle;
 uobj->object = ah;

 resp.ah_handle = uobj->id;

 ret = uverbs_response(attrs, &resp, sizeof(resp));
 if (ret)
  goto err_copy;

 uobj_put_obj_read(pd);
 return uobj_alloc_commit(uobj, attrs);

err_copy:
 rdma_destroy_ah_user(ah, RDMA_DESTROY_AH_SLEEPABLE,
        uverbs_get_cleared_udata(attrs));

err_put:
 uobj_put_obj_read(pd);

err:
 uobj_alloc_abort(uobj, attrs);
 return ret;
}
