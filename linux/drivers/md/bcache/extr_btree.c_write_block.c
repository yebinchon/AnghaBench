
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree {int written; int c; } ;
typedef void bset ;


 int block_bytes (int ) ;
 scalar_t__ btree_bset_first (struct btree*) ;

__attribute__((used)) static inline struct bset *write_block(struct btree *b)
{
 return ((void *) btree_bset_first(b)) + b->written * block_bytes(b->c);
}
