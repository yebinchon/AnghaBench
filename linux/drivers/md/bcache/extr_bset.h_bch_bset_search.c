
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_keys {int dummy; } ;
struct bset_tree {TYPE_1__* data; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {struct bkey* start; } ;


 struct bkey* __bch_bset_search (struct btree_keys*,struct bset_tree*,struct bkey const*) ;

__attribute__((used)) static inline struct bkey *bch_bset_search(struct btree_keys *b,
        struct bset_tree *t,
        const struct bkey *search)
{
 return search ? __bch_bset_search(b, t, search) : t->data->start;
}
