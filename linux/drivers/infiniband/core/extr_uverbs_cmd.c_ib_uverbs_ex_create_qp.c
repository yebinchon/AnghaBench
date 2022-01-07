
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_create_qp {int comp_mask; scalar_t__ reserved; } ;
typedef int cmd ;


 int EINVAL ;
 int IB_UVERBS_CREATE_QP_SUP_COMP_MASK ;
 int create_qp (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_qp*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_qp*,int) ;

__attribute__((used)) static int ib_uverbs_ex_create_qp(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_create_qp cmd;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (cmd.comp_mask & ~IB_UVERBS_CREATE_QP_SUP_COMP_MASK)
  return -EINVAL;

 if (cmd.reserved)
  return -EINVAL;

 return create_qp(attrs, &cmd);
}
