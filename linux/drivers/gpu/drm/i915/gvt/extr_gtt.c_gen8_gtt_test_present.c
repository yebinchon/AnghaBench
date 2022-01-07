
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_entry {scalar_t__ type; int val64; } ;


 scalar_t__ GTT_TYPE_PPGTT_ROOT_L3_ENTRY ;
 scalar_t__ GTT_TYPE_PPGTT_ROOT_L4_ENTRY ;
 int _PAGE_PRESENT ;

__attribute__((used)) static bool gen8_gtt_test_present(struct intel_gvt_gtt_entry *e)
{





 if (e->type == GTT_TYPE_PPGTT_ROOT_L3_ENTRY
   || e->type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY)
  return (e->val64 != 0);
 else
  return (e->val64 & _PAGE_PRESENT);
}
