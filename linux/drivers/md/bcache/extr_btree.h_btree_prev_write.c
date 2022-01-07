
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_write {int dummy; } ;
struct btree {struct btree_write* writes; } ;


 int btree_node_write_idx (struct btree*) ;

__attribute__((used)) static inline struct btree_write *btree_prev_write(struct btree *b)
{
 return b->writes + (btree_node_write_idx(b) ^ 1);
}
