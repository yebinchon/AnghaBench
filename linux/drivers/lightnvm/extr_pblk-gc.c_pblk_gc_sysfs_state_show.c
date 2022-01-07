
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_gc {int gc_enabled; int gc_active; int lock; } ;
struct pblk {struct pblk_gc gc; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_gc_sysfs_state_show(struct pblk *pblk, int *gc_enabled,
         int *gc_active)
{
 struct pblk_gc *gc = &pblk->gc;

 spin_lock(&gc->lock);
 *gc_enabled = gc->gc_enabled;
 *gc_active = gc->gc_active;
 spin_unlock(&gc->lock);
}
