
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int nr_entries; int l2p_update; int w_lock; } ;


 int __pblk_rb_update_l2p (struct pblk_rb*,unsigned int) ;
 int lockdep_assert_held (int *) ;
 unsigned int pblk_rb_ring_space (struct pblk_rb*,unsigned int,int ,int ) ;

__attribute__((used)) static int pblk_rb_update_l2p(struct pblk_rb *rb, unsigned int nr_entries,
         unsigned int mem, unsigned int sync)
{
 unsigned int space, count;
 int ret = 0;

 lockdep_assert_held(&rb->w_lock);


 space = pblk_rb_ring_space(rb, mem, rb->l2p_update, rb->nr_entries);
 if (space > nr_entries)
  goto out;

 count = nr_entries - space;

 ret = __pblk_rb_update_l2p(rb, count);

out:
 return ret;
}
