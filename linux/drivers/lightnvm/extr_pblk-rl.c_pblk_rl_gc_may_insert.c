
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_gc_max; int rb_user_active; int rb_gc_cnt; } ;


 int READ_ONCE (int ) ;
 int atomic_read (int *) ;

int pblk_rl_gc_may_insert(struct pblk_rl *rl, int nr_entries)
{
 int rb_gc_cnt = atomic_read(&rl->rb_gc_cnt);
 int rb_user_active;


 rb_user_active = READ_ONCE(rl->rb_user_active);
 return (!(rb_gc_cnt >= rl->rb_gc_max && rb_user_active));
}
