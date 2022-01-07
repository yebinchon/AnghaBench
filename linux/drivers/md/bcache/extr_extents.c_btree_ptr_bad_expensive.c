
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bucket {scalar_t__ prio; int last_gc; int gen; int pin; } ;
struct btree {TYPE_1__* c; } ;
struct bkey {int dummy; } ;
typedef int buf ;
struct TYPE_4__ {int bucket_lock; scalar_t__ gc_mark_valid; } ;


 scalar_t__ BTREE_PRIO ;
 scalar_t__ GC_MARK (struct bucket*) ;
 scalar_t__ GC_MARK_METADATA ;
 scalar_t__ KEY_DIRTY (struct bkey const*) ;
 unsigned int KEY_PTRS (struct bkey const*) ;
 struct bucket* PTR_BUCKET (TYPE_1__*,struct bkey const*,unsigned int) ;
 int PTR_BUCKET_NR (TYPE_1__*,struct bkey const*,unsigned int) ;
 int atomic_read (int *) ;
 int bch_extent_to_text (char*,int,struct bkey const*) ;
 int btree_bug (struct btree*,char*,char*,int ,int ,scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ptr_available (TYPE_1__*,struct bkey const*,unsigned int) ;

__attribute__((used)) static bool btree_ptr_bad_expensive(struct btree *b, const struct bkey *k)
{
 unsigned int i;
 char buf[80];
 struct bucket *g;

 if (mutex_trylock(&b->c->bucket_lock)) {
  for (i = 0; i < KEY_PTRS(k); i++)
   if (ptr_available(b->c, k, i)) {
    g = PTR_BUCKET(b->c, k, i);

    if (KEY_DIRTY(k) ||
        g->prio != BTREE_PRIO ||
        (b->c->gc_mark_valid &&
         GC_MARK(g) != GC_MARK_METADATA))
     goto err;
   }

  mutex_unlock(&b->c->bucket_lock);
 }

 return 0;
err:
 mutex_unlock(&b->c->bucket_lock);
 bch_extent_to_text(buf, sizeof(buf), k);
 btree_bug(b,
"inconsistent btree pointer %s: bucket %zi pin %i prio %i gen %i last_gc %i mark %llu",
    buf, PTR_BUCKET_NR(b->c, k, i), atomic_read(&g->pin),
    g->prio, g->gen, g->last_gc, GC_MARK(g));
 return 1;
}
