
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rb_user_max; int rb_gc_max; int rb_budget; int rb_state; int total_blocks; int high; int rb_user_active; int rb_gc_cnt; int rb_user_cnt; } ;
struct pblk {TYPE_1__ rl; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int READ_ONCE (int ) ;
 int atomic_read (int *) ;
 int pblk_rl_nr_free_blks (TYPE_1__*) ;
 int pblk_rl_nr_user_free_blks (TYPE_1__*) ;
 int snprintf (char*,int ,char*,int,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t pblk_sysfs_rate_limiter(struct pblk *pblk, char *page)
{
 int free_blocks, free_user_blocks, total_blocks;
 int rb_user_max, rb_user_cnt;
 int rb_gc_max, rb_gc_cnt, rb_budget, rb_state;

 free_blocks = pblk_rl_nr_free_blks(&pblk->rl);
 free_user_blocks = pblk_rl_nr_user_free_blks(&pblk->rl);
 rb_user_max = pblk->rl.rb_user_max;
 rb_user_cnt = atomic_read(&pblk->rl.rb_user_cnt);
 rb_gc_max = pblk->rl.rb_gc_max;
 rb_gc_cnt = atomic_read(&pblk->rl.rb_gc_cnt);
 rb_budget = pblk->rl.rb_budget;
 rb_state = pblk->rl.rb_state;

 total_blocks = pblk->rl.total_blocks;

 return snprintf(page, PAGE_SIZE,
  "u:%u/%u,gc:%u/%u(%u)(stop:<%u,full:>%u,free:%d/%d/%d)-%d\n",
    rb_user_cnt,
    rb_user_max,
    rb_gc_cnt,
    rb_gc_max,
    rb_state,
    rb_budget,
    pblk->rl.high,
    free_blocks,
    free_user_blocks,
    total_blocks,
    READ_ONCE(pblk->rl.rb_user_active));
}
