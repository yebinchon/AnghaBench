
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lock {scalar_t__ rw; scalar_t__ flags; int lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool __ttm_read_trylock(struct ttm_lock *lock, bool *locked)
{
 bool block = 1;

 *locked = 0;

 spin_lock(&lock->lock);
 if (lock->rw >= 0 && lock->flags == 0) {
  ++lock->rw;
  block = 0;
  *locked = 1;
 } else if (lock->flags == 0) {
  block = 0;
 }
 spin_unlock(&lock->lock);

 return !block;
}
