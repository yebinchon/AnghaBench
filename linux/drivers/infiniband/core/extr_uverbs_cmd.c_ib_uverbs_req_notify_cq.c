
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_req_notify_cq {scalar_t__ solicited_only; int cq_handle; } ;
struct ib_cq {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int IB_CQ_NEXT_COMP ;
 int IB_CQ_SOLICITED ;
 int UVERBS_OBJECT_CQ ;
 int ib_req_notify_cq (struct ib_cq*,int ) ;
 struct ib_cq* uobj_get_obj_read (struct ib_cq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_cq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_req_notify_cq*,int) ;

__attribute__((used)) static int ib_uverbs_req_notify_cq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_req_notify_cq cmd;
 struct ib_cq *cq;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 cq = uobj_get_obj_read(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
 if (!cq)
  return -EINVAL;

 ib_req_notify_cq(cq, cmd.solicited_only ?
    IB_CQ_SOLICITED : IB_CQ_NEXT_COMP);

 uobj_put_obj_read(cq);

 return 0;
}
