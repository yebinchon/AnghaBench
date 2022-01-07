
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_dereg_mr {int mr_handle; } ;
typedef int cmd ;


 int UVERBS_OBJECT_MR ;
 int uobj_perform_destroy (int ,int ,struct uverbs_attr_bundle*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_dereg_mr*,int) ;

__attribute__((used)) static int ib_uverbs_dereg_mr(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_dereg_mr cmd;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 return uobj_perform_destroy(UVERBS_OBJECT_MR, cmd.mr_handle, attrs);
}
