
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int gc_forced; int gc_enabled; int lock; } ;
struct pblk {struct pblk_gc gc; } ;


 int EINVAL ;
 int pblk_gc_should_start (struct pblk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int pblk_gc_sysfs_force(struct pblk *pblk, int force)
{
 struct pblk_gc *gc = &pblk->gc;

 if (force < 0 || force > 1)
  return -EINVAL;

 spin_lock(&gc->lock);
 gc->gc_forced = force;

 if (force)
  gc->gc_enabled = 1;
 else
  gc->gc_enabled = 0;
 spin_unlock(&gc->lock);

 pblk_gc_should_start(pblk);

 return 0;
}
