
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {int cq_period; int cq_count; } ;
struct ib_uverbs_ex_modify_cq {scalar_t__ attr_mask; TYPE_1__ attr; int cq_handle; scalar_t__ reserved; } ;
struct ib_cq {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IB_CQ_MODERATE ;
 int UVERBS_OBJECT_CQ ;
 int rdma_set_cq_moderation (struct ib_cq*,int ,int ) ;
 struct ib_cq* uobj_get_obj_read (struct ib_cq*,int ,int ,struct uverbs_attr_bundle*) ;
 int uobj_put_obj_read (struct ib_cq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_cq*,int) ;

__attribute__((used)) static int ib_uverbs_ex_modify_cq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_modify_cq cmd;
 struct ib_cq *cq;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (!cmd.attr_mask || cmd.reserved)
  return -EINVAL;

 if (cmd.attr_mask > IB_CQ_MODERATE)
  return -EOPNOTSUPP;

 cq = uobj_get_obj_read(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
 if (!cq)
  return -EINVAL;

 ret = rdma_set_cq_moderation(cq, cmd.attr.cq_count, cmd.attr.cq_period);

 uobj_put_obj_read(cq);

 return ret;
}
