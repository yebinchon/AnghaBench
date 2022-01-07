
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_create_cq {scalar_t__ reserved; scalar_t__ comp_mask; } ;
struct ib_ucq_object {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int PTR_ERR_OR_ZERO (struct ib_ucq_object*) ;
 struct ib_ucq_object* create_cq (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_cq*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_cq*,int) ;

__attribute__((used)) static int ib_uverbs_ex_create_cq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_ex_create_cq cmd;
 struct ib_ucq_object *obj;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (cmd.comp_mask)
  return -EINVAL;

 if (cmd.reserved)
  return -EINVAL;

 obj = create_cq(attrs, &cmd);
 return PTR_ERR_OR_ZERO(obj);
}
