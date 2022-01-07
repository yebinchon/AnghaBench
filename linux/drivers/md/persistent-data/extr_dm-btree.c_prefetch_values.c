
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int value_le ;
struct dm_btree_cursor {int depth; TYPE_2__* info; struct cursor_node* nodes; } ;
struct dm_block_manager {int dummy; } ;
struct cursor_node {int b; } ;
struct TYPE_6__ {int nr_entries; } ;
struct btree_node {TYPE_3__ header; } ;
typedef int __le64 ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ value_type; int tm; } ;


 int BUG_ON (int) ;
 struct btree_node* dm_block_data (int ) ;
 int dm_bm_prefetch (struct dm_block_manager*,int ) ;
 struct dm_block_manager* dm_tm_get_bm (int ) ;
 unsigned int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int value_ptr (struct btree_node*,unsigned int) ;

__attribute__((used)) static void prefetch_values(struct dm_btree_cursor *c)
{
 unsigned i, nr;
 __le64 value_le;
 struct cursor_node *n = c->nodes + c->depth - 1;
 struct btree_node *bn = dm_block_data(n->b);
 struct dm_block_manager *bm = dm_tm_get_bm(c->info->tm);

 BUG_ON(c->info->value_type.size != sizeof(value_le));

 nr = le32_to_cpu(bn->header.nr_entries);
 for (i = 0; i < nr; i++) {
  memcpy(&value_le, value_ptr(bn, i), sizeof(value_le));
  dm_bm_prefetch(bm, le64_to_cpu(value_le));
 }
}
