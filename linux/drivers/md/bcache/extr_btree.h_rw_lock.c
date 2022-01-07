
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree {int seq; int lock; } ;


 int down_read_nested (int *,int) ;
 int down_write_nested (int *,int) ;

__attribute__((used)) static inline void rw_lock(bool w, struct btree *b, int level)
{
 w ? down_write_nested(&b->lock, level + 1)
   : down_read_nested(&b->lock, level + 1);
 if (w)
  b->seq++;
}
