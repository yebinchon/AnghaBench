
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int rb_user_max; int rb_space; int rb_user_cnt; } ;


 int NVM_IO_ERR ;
 int NVM_IO_OK ;
 int NVM_IO_REQUEUE ;
 int atomic_read (int *) ;
 scalar_t__ unlikely (int) ;

int pblk_rl_user_may_insert(struct pblk_rl *rl, int nr_entries)
{
 int rb_user_cnt = atomic_read(&rl->rb_user_cnt);
 int rb_space = atomic_read(&rl->rb_space);

 if (unlikely(rb_space >= 0) && (rb_space - nr_entries < 0))
  return NVM_IO_ERR;

 if (rb_user_cnt >= rl->rb_user_max)
  return NVM_IO_REQUEUE;

 return NVM_IO_OK;
}
