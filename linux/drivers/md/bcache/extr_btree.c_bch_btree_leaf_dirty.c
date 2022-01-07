
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btree_write {int * journal; } ;
struct btree {int c; int work; int written; int write_lock; } ;
struct bset {int keys; } ;
typedef int atomic_t ;
struct TYPE_2__ {int bio_list; } ;


 int BUG_ON (int) ;
 int HZ ;
 int PAGE_SIZE ;
 int atomic_dec_bug (int *) ;
 int atomic_inc (int *) ;
 int bch_btree_node_write (struct btree*,int *) ;
 struct bset* btree_bset_last (struct btree*) ;
 struct btree_write* btree_current_write (struct btree*) ;
 int btree_node_dirty (struct btree*) ;
 TYPE_1__* current ;
 scalar_t__ journal_pin_cmp (int ,int *,int *) ;
 int lockdep_assert_held (int *) ;
 int schedule_delayed_work (int *,int) ;
 int set_btree_node_dirty (struct btree*) ;
 int set_bytes (struct bset*) ;

__attribute__((used)) static void bch_btree_leaf_dirty(struct btree *b, atomic_t *journal_ref)
{
 struct bset *i = btree_bset_last(b);
 struct btree_write *w = btree_current_write(b);

 lockdep_assert_held(&b->write_lock);

 BUG_ON(!b->written);
 BUG_ON(!i->keys);

 if (!btree_node_dirty(b))
  schedule_delayed_work(&b->work, 30 * HZ);

 set_btree_node_dirty(b);

 if (journal_ref) {
  if (w->journal &&
      journal_pin_cmp(b->c, w->journal, journal_ref)) {
   atomic_dec_bug(w->journal);
   w->journal = ((void*)0);
  }

  if (!w->journal) {
   w->journal = journal_ref;
   atomic_inc(w->journal);
  }
 }


 if (set_bytes(i) > PAGE_SIZE - 48 &&
     !current->bio_list)
  bch_btree_node_write(b, ((void*)0));
}
