
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_page_pool {char* name; char* nrefills; char* nfrees; char* npages; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {struct ttm_page_pool* pools; } ;


 unsigned int NUM_POOLS ;
 TYPE_1__* _manager ;
 int seq_printf (struct seq_file*,char*,...) ;

int ttm_page_alloc_debugfs(struct seq_file *m, void *data)
{
 struct ttm_page_pool *p;
 unsigned i;
 char *h[] = {"pool", "refills", "pages freed", "size"};
 if (!_manager) {
  seq_printf(m, "No pool allocator running.\n");
  return 0;
 }
 seq_printf(m, "%7s %12s %13s %8s\n",
   h[0], h[1], h[2], h[3]);
 for (i = 0; i < NUM_POOLS; ++i) {
  p = &_manager->pools[i];

  seq_printf(m, "%7s %12ld %13ld %8d\n",
    p->name, p->nrefills,
    p->nfrees, p->npages);
 }
 return 0;
}
