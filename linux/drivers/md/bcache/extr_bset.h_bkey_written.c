
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btree_keys {size_t nsets; TYPE_2__* set; int last_set_unwritten; } ;
struct bkey {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {struct bkey* start; } ;



__attribute__((used)) static inline bool bkey_written(struct btree_keys *b, struct bkey *k)
{
 return !b->last_set_unwritten || k < b->set[b->nsets].data->start;
}
