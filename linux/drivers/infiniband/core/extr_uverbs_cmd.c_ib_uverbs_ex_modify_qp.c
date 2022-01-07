
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_modify_qp_resp {int response_length; } ;
struct TYPE_2__ {int attr_mask; } ;
struct ib_uverbs_ex_modify_qp {TYPE_1__ base; } ;
typedef int resp ;
typedef int cmd ;


 int BUILD_BUG_ON (int) ;
 int EOPNOTSUPP ;
 int IB_USER_LAST_QP_ATTR_MASK ;
 int modify_qp (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp*,int) ;
 int uverbs_response (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp_resp*,int) ;
 int uverbs_response_length (struct uverbs_attr_bundle*,int) ;

__attribute__((used)) static int ib_uverbs_ex_modify_qp(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_modify_qp cmd;
 struct ib_uverbs_ex_modify_qp_resp resp = {
  .response_length = uverbs_response_length(attrs, sizeof(resp))
 };
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;





 BUILD_BUG_ON(IB_USER_LAST_QP_ATTR_MASK == (1 << 31));

 if (cmd.base.attr_mask &
     ~((IB_USER_LAST_QP_ATTR_MASK << 1) - 1))
  return -EOPNOTSUPP;

 ret = modify_qp(attrs, &cmd);
 if (ret)
  return ret;

 return uverbs_response(attrs, &resp, sizeof(resp));
}
