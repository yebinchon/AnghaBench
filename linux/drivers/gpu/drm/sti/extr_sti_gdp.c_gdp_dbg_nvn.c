
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_gdp {TYPE_1__* node_list; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int top_field_paddr; int btm_field_paddr; void* btm_field; void* top_field; } ;


 unsigned int GDP_NODE_NB_BANK ;
 int seq_printf (struct seq_file*,char*,void*) ;

__attribute__((used)) static void gdp_dbg_nvn(struct seq_file *s, struct sti_gdp *gdp, int val)
{
 void *base = ((void*)0);
 unsigned int i;

 for (i = 0; i < GDP_NODE_NB_BANK; i++) {
  if (gdp->node_list[i].top_field_paddr == val) {
   base = gdp->node_list[i].top_field;
   break;
  }
  if (gdp->node_list[i].btm_field_paddr == val) {
   base = gdp->node_list[i].btm_field;
   break;
  }
 }

 if (base)
  seq_printf(s, "\tVirt @: %p", base);
}
