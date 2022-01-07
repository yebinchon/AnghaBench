
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int dummy; } ;
struct btree {int write_lock; } ;


 int bch_btree_node_write (struct btree*,struct closure*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bch_btree_node_write_sync(struct btree *b)
{
 struct closure cl;

 closure_init_stack(&cl);

 mutex_lock(&b->write_lock);
 bch_btree_node_write(b, &cl);
 mutex_unlock(&b->write_lock);

 closure_sync(&cl);
}
