
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_chunk_work {int chunk; TYPE_1__* target; int bio_list; int refcount; } ;
struct TYPE_2__ {int chunk_rxtree; } ;


 int WARN_ON (int) ;
 int bio_list_empty (int *) ;
 int kfree (struct dm_chunk_work*) ;
 int radix_tree_delete (int *,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void dmz_put_chunk_work(struct dm_chunk_work *cw)
{
 if (refcount_dec_and_test(&cw->refcount)) {
  WARN_ON(!bio_list_empty(&cw->bio_list));
  radix_tree_delete(&cw->target->chunk_rxtree, cw->chunk);
  kfree(cw);
 }
}
