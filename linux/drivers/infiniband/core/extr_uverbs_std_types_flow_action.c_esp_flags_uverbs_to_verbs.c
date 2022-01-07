
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct uverbs_attr_bundle {int dummy; } ;


 int IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED ;
 int IB_FLOW_ACTION_ESP_FLAGS_MOD_ESP_ATTRS ;
 int UVERBS_ATTR_FLOW_ACTION_ESP_ATTRS ;
 int UVERBS_ATTR_FLOW_ACTION_ESP_ESN ;
 scalar_t__ uverbs_attr_is_valid (struct uverbs_attr_bundle*,int ) ;

__attribute__((used)) static u64 esp_flags_uverbs_to_verbs(struct uverbs_attr_bundle *attrs,
         u32 flags, bool is_modify)
{
 u64 verbs_flags = flags;

 if (uverbs_attr_is_valid(attrs, UVERBS_ATTR_FLOW_ACTION_ESP_ESN))
  verbs_flags |= IB_FLOW_ACTION_ESP_FLAGS_ESN_TRIGGERED;

 if (is_modify && uverbs_attr_is_valid(attrs,
           UVERBS_ATTR_FLOW_ACTION_ESP_ATTRS))
  verbs_flags |= IB_FLOW_ACTION_ESP_FLAGS_MOD_ESP_ATTRS;

 return verbs_flags;
}
