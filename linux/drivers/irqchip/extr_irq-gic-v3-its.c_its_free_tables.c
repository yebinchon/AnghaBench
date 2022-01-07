
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_node {TYPE_1__* tables; } ;
struct TYPE_2__ {int * base; int order; } ;


 int GITS_BASER_NR_REGS ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void its_free_tables(struct its_node *its)
{
 int i;

 for (i = 0; i < GITS_BASER_NR_REGS; i++) {
  if (its->tables[i].base) {
   free_pages((unsigned long)its->tables[i].base,
       its->tables[i].order);
   its->tables[i].base = ((void*)0);
  }
 }
}
