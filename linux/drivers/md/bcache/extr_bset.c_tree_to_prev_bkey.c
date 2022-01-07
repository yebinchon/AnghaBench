
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bset_tree {int* prev; } ;
typedef void bkey ;


 scalar_t__ tree_to_bkey (struct bset_tree*,unsigned int) ;

__attribute__((used)) static struct bkey *tree_to_prev_bkey(struct bset_tree *t, unsigned int j)
{
 return (void *) (((uint64_t *) tree_to_bkey(t, j)) - t->prev[j]);
}
