
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree {TYPE_1__* c; int keys; } ;
struct bset {int dummy; } ;
struct TYPE_2__ {unsigned int block_bits; } ;


 unsigned int bset_sector_offset (int *,struct bset*) ;

__attribute__((used)) static inline unsigned int bset_block_offset(struct btree *b, struct bset *i)
{
 return bset_sector_offset(&b->keys, i) >> b->c->block_bits;
}
