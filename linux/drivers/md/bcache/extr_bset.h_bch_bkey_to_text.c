
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_keys {TYPE_1__* ops; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {void (* key_to_text ) (char*,size_t,struct bkey const*) ;} ;


 void stub1 (char*,size_t,struct bkey const*) ;

__attribute__((used)) static inline void bch_bkey_to_text(struct btree_keys *b, char *buf,
        size_t size, const struct bkey *k)
{
 return b->ops->key_to_text(buf, size, k);
}
