
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct btree {TYPE_2__ keys; } ;
struct TYPE_3__ {scalar_t__ is_extents; } ;


 scalar_t__ KEY_MAX_U64S ;
 long bch_btree_keys_u64s_remaining (TYPE_2__*) ;
 size_t max (long,long) ;

__attribute__((used)) static size_t insert_u64s_remaining(struct btree *b)
{
 long ret = bch_btree_keys_u64s_remaining(&b->keys);




 if (b->keys.ops->is_extents)
  ret -= KEY_MAX_U64S;

 return max(ret, 0L);
}
