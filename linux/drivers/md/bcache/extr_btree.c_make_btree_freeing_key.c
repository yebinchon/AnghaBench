
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct btree {TYPE_1__* c; int key; } ;
struct bkey {int dummy; } ;
struct TYPE_3__ {int bucket_lock; int prio_blocked; } ;


 unsigned int KEY_PTRS (struct bkey*) ;
 int PTR_BUCKET (TYPE_1__*,int *,unsigned int) ;
 int PTR_CACHE (TYPE_1__*,int *,unsigned int) ;
 int SET_PTR_GEN (struct bkey*,unsigned int,int ) ;
 int ZERO_KEY ;
 int atomic_inc (int *) ;
 int bch_inc_gen (int ,int ) ;
 int bkey_copy (struct bkey*,int *) ;
 int bkey_copy_key (struct bkey*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void make_btree_freeing_key(struct btree *b, struct bkey *k)
{
 unsigned int i;

 mutex_lock(&b->c->bucket_lock);

 atomic_inc(&b->c->prio_blocked);

 bkey_copy(k, &b->key);
 bkey_copy_key(k, &ZERO_KEY);

 for (i = 0; i < KEY_PTRS(k); i++)
  SET_PTR_GEN(k, i,
       bch_inc_gen(PTR_CACHE(b->c, &b->key, i),
     PTR_BUCKET(b->c, &b->key, i)));

 mutex_unlock(&b->c->bucket_lock);
}
