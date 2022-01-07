
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pending_block {int vec_cnt; struct pending_block* data; TYPE_1__* vecs; } ;
struct log_writes_c {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_page; } ;


 int __free_page (scalar_t__) ;
 int kfree (struct pending_block*) ;
 int put_pending_block (struct log_writes_c*) ;

__attribute__((used)) static void free_pending_block(struct log_writes_c *lc,
          struct pending_block *block)
{
 int i;

 for (i = 0; i < block->vec_cnt; i++) {
  if (block->vecs[i].bv_page)
   __free_page(block->vecs[i].bv_page);
 }
 kfree(block->data);
 kfree(block);
 put_pending_block(lc);
}
