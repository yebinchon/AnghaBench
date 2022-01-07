
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_op {int lock; int wait; } ;


 int init_wait (int *) ;
 int memset (struct btree_op*,int ,int) ;

__attribute__((used)) static inline void bch_btree_op_init(struct btree_op *op, int write_lock_level)
{
 memset(op, 0, sizeof(struct btree_op));
 init_wait(&op->wait);
 op->lock = write_lock_level;
}
