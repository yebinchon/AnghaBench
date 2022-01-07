
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree {int lock; int seq; } ;


 int stub1 (int *) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static inline void rw_unlock(bool w, struct btree *b)
{
 if (w)
  b->seq++;
 (w ? up_write : up_read)(&b->lock);
}
