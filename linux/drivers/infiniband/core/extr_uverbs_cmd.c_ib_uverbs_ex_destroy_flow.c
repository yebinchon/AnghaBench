
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_destroy_flow {int flow_handle; scalar_t__ comp_mask; } ;
typedef int cmd ;


 int EINVAL ;
 int UVERBS_OBJECT_FLOW ;
 int uobj_perform_destroy (int ,int ,struct uverbs_attr_bundle*) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_destroy_flow*,int) ;

__attribute__((used)) static int ib_uverbs_ex_destroy_flow(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_destroy_flow cmd;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 if (cmd.comp_mask)
  return -EINVAL;

 return uobj_perform_destroy(UVERBS_OBJECT_FLOW, cmd.flow_handle, attrs);
}
