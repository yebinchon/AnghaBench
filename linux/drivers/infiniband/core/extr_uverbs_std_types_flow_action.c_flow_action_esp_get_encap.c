
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_flow_action_esp_encap {scalar_t__ type; int len; int val_ptr; scalar_t__ next_ptr; } ;
struct ib_flow_spec_list {int spec; } ;


 int EOPNOTSUPP ;
 scalar_t__ IB_FLOW_SPEC_IPV4 ;
 scalar_t__ IB_FLOW_SPEC_IPV6 ;
 int UVERBS_ATTR_FLOW_ACTION_ESP_ENCAP ;
 int parse_esp_ip (scalar_t__,int ,int ,int *) ;
 int u64_to_user_ptr (int ) ;
 int uverbs_copy_from (struct ib_uverbs_flow_action_esp_encap*,struct uverbs_attr_bundle*,int ) ;

__attribute__((used)) static int flow_action_esp_get_encap(struct ib_flow_spec_list *out,
         struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_flow_action_esp_encap uverbs_encap;
 int ret;

 ret = uverbs_copy_from(&uverbs_encap, attrs,
          UVERBS_ATTR_FLOW_ACTION_ESP_ENCAP);
 if (ret)
  return ret;


 if (uverbs_encap.next_ptr)
  return -EOPNOTSUPP;

 if (uverbs_encap.type != IB_FLOW_SPEC_IPV4 &&
     uverbs_encap.type != IB_FLOW_SPEC_IPV6)
  return -EOPNOTSUPP;

 return parse_esp_ip(uverbs_encap.type,
       u64_to_user_ptr(uverbs_encap.val_ptr),
       uverbs_encap.len,
       &out->spec);
}
