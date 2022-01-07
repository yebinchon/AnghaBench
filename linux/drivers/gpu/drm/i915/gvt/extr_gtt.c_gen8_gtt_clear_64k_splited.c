
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_entry {int val64; } ;


 int GTT_SPTE_FLAG_64K_SPLITED ;

__attribute__((used)) static void gen8_gtt_clear_64k_splited(struct intel_gvt_gtt_entry *e)
{
 e->val64 &= ~GTT_SPTE_FLAG_64K_SPLITED;
}
