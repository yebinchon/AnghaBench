
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {unsigned int* counts; } ;
typedef int sector_t ;


 unsigned int KEYS_PER_NODE ;
 int get_child (unsigned int,unsigned int) ;
 int * get_node (struct dm_table*,unsigned int,unsigned int) ;
 int high (struct dm_table*,unsigned int,int ) ;

__attribute__((used)) static int setup_btree_index(unsigned int l, struct dm_table *t)
{
 unsigned int n, k;
 sector_t *node;

 for (n = 0U; n < t->counts[l]; n++) {
  node = get_node(t, l, n);

  for (k = 0U; k < KEYS_PER_NODE; k++)
   node[k] = high(t, l + 1, get_child(n, k));
 }

 return 0;
}
