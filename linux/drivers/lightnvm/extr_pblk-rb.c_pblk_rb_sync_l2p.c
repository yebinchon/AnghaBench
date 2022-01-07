
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int w_lock; int nr_entries; int l2p_update; int sync; } ;


 int __pblk_rb_update_l2p (struct pblk_rb*,unsigned int) ;
 unsigned int pblk_rb_ring_count (unsigned int,int ,int ) ;
 unsigned int smp_load_acquire (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pblk_rb_sync_l2p(struct pblk_rb *rb)
{
 unsigned int sync;
 unsigned int to_update;

 spin_lock(&rb->w_lock);


 sync = smp_load_acquire(&rb->sync);

 to_update = pblk_rb_ring_count(sync, rb->l2p_update, rb->nr_entries);
 __pblk_rb_update_l2p(rb, to_update);

 spin_unlock(&rb->w_lock);
}
