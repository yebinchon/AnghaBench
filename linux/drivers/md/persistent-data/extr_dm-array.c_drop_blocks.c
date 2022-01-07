
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct resize {int root; TYPE_1__* info; } ;
struct TYPE_2__ {int btree_info; } ;


 int dm_btree_remove (int *,int ,int *,int *) ;

__attribute__((used)) static int drop_blocks(struct resize *resize, unsigned begin_index,
         unsigned end_index)
{
 int r;

 while (begin_index != end_index) {
  uint64_t key = begin_index++;
  r = dm_btree_remove(&resize->info->btree_info, resize->root,
        &key, &resize->root);
  if (r)
   return r;
 }

 return 0;
}
