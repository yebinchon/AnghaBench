
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int dummy; } ;
struct btree {int io_mutex; struct cache_set* c; int work; int list; int write_lock; int lock; } ;
struct bkey {int dummy; } ;
typedef int gfp_t ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int btree_node_write_work ;
 int init_rwsem (int *) ;
 struct btree* kzalloc (int,int ) ;
 int lockdep_set_novalidate_class (int *) ;
 int mca_data_alloc (struct btree*,struct bkey*,int ) ;
 int mutex_init (int *) ;
 int sema_init (int *,int) ;

__attribute__((used)) static struct btree *mca_bucket_alloc(struct cache_set *c,
          struct bkey *k, gfp_t gfp)
{




 struct btree *b = kzalloc(sizeof(struct btree), gfp);

 if (!b)
  return ((void*)0);

 init_rwsem(&b->lock);
 lockdep_set_novalidate_class(&b->lock);
 mutex_init(&b->write_lock);
 lockdep_set_novalidate_class(&b->write_lock);
 INIT_LIST_HEAD(&b->list);
 INIT_DELAYED_WORK(&b->work, btree_node_write_work);
 b->c = c;
 sema_init(&b->io_mutex, 1);

 mca_data_alloc(b, k, gfp);
 return b;
}
