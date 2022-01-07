
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_keys {TYPE_1__* set; } ;
struct bset {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;



__attribute__((used)) static inline unsigned int bset_byte_offset(struct btree_keys *b,
         struct bset *i)
{
 return ((size_t) i) - ((size_t) b->set->data);
}
