
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_keys {int dummy; } ;


 size_t BSET_CACHELINE ;
 size_t btree_keys_bytes (struct btree_keys*) ;

__attribute__((used)) static inline size_t btree_keys_cachelines(struct btree_keys *b)
{
 return btree_keys_bytes(b) / BSET_CACHELINE;
}
