
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_gvt {int cmd_table; } ;
struct cmd_entry {TYPE_1__* info; int hlist; } ;
struct TYPE_2__ {int opcode; } ;


 int hash_add (int ,int *,int ) ;

__attribute__((used)) static void add_cmd_entry(struct intel_gvt *gvt, struct cmd_entry *e)
{
 hash_add(gvt->cmd_table, &e->hlist, e->info->opcode);
}
