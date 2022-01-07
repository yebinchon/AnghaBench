
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;
struct bkey_float {int dummy; } ;


 int btree_keys_cachelines (struct btree_keys*) ;

__attribute__((used)) static inline size_t bset_tree_bytes(struct btree_keys *b)
{
 return btree_keys_cachelines(b) * sizeof(struct bkey_float);
}
