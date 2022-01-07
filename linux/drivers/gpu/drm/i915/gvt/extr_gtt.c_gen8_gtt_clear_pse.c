
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_entry {int type; int val64; } ;


 int GTT_TYPE_PPGTT_PDE_ENTRY ;
 int GTT_TYPE_PPGTT_PDP_ENTRY ;


 int WARN_ON (int) ;
 int _PAGE_PSE ;
 scalar_t__ gen8_gtt_test_pse (struct intel_gvt_gtt_entry*) ;

__attribute__((used)) static void gen8_gtt_clear_pse(struct intel_gvt_gtt_entry *e)
{
 if (gen8_gtt_test_pse(e)) {
  switch (e->type) {
  case 128:
   e->val64 &= ~_PAGE_PSE;
   e->type = GTT_TYPE_PPGTT_PDE_ENTRY;
   break;
  case 129:
   e->type = GTT_TYPE_PPGTT_PDP_ENTRY;
   e->val64 &= ~_PAGE_PSE;
   break;
  default:
   WARN_ON(1);
  }
 }
}
