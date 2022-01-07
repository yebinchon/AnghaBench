
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {unsigned int nr_children; int n; } ;
struct dm_block_manager {int dummy; } ;
struct del_stack {int tm; } ;


 int dm_bm_prefetch (struct dm_block_manager*,int ) ;
 struct dm_block_manager* dm_tm_get_bm (int ) ;
 int value64 (int ,unsigned int) ;

__attribute__((used)) static void prefetch_children(struct del_stack *s, struct frame *f)
{
 unsigned i;
 struct dm_block_manager *bm = dm_tm_get_bm(s->tm);

 for (i = 0; i < f->nr_children; i++)
  dm_bm_prefetch(bm, value64(f->n, i));
}
