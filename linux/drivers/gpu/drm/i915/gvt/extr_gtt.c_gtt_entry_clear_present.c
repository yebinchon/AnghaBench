
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_entry {int val64; } ;


 int _PAGE_PRESENT ;

__attribute__((used)) static void gtt_entry_clear_present(struct intel_gvt_gtt_entry *e)
{
 e->val64 &= ~_PAGE_PRESENT;
}
