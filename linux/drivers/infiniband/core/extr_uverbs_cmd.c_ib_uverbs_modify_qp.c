
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {int attr_mask; } ;
struct ib_uverbs_ex_modify_qp {TYPE_1__ base; } ;


 int EOPNOTSUPP ;
 int IB_USER_LEGACY_LAST_QP_ATTR_MASK ;
 int modify_qp (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp*) ;
 int uverbs_request (struct uverbs_attr_bundle*,TYPE_1__*,int) ;

__attribute__((used)) static int ib_uverbs_modify_qp(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_modify_qp cmd;
 int ret;

 ret = uverbs_request(attrs, &cmd.base, sizeof(cmd.base));
 if (ret)
  return ret;

 if (cmd.base.attr_mask &
     ~((IB_USER_LEGACY_LAST_QP_ATTR_MASK << 1) - 1))
  return -EOPNOTSUPP;

 return modify_qp(attrs, &cmd);
}
