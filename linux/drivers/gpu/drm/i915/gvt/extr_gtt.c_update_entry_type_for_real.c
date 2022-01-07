
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_pte_ops {int (* test_pse ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int type; } ;


 int GEM_BUG_ON (int) ;
 int GTT_TYPE_INVALID ;



 void* get_pse_type (int) ;
 int gtt_type_is_entry (int) ;
 int stub1 (struct intel_gvt_gtt_entry*) ;

__attribute__((used)) static void update_entry_type_for_real(struct intel_gvt_gtt_pte_ops *pte_ops,
 struct intel_gvt_gtt_entry *entry, bool ips)
{
 switch (entry->type) {
 case 130:
 case 129:
  if (pte_ops->test_pse(entry))
   entry->type = get_pse_type(entry->type);
  break;
 case 128:
  if (ips)
   entry->type = get_pse_type(entry->type);
  break;
 default:
  GEM_BUG_ON(!gtt_type_is_entry(entry->type));
 }

 GEM_BUG_ON(entry->type == GTT_TYPE_INVALID);
}
