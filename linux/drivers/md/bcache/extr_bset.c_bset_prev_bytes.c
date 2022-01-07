
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct btree_keys {int dummy; } ;


 int btree_keys_cachelines (struct btree_keys*) ;

__attribute__((used)) static inline size_t bset_prev_bytes(struct btree_keys *b)
{
 return btree_keys_cachelines(b) * sizeof(uint8_t);
}
