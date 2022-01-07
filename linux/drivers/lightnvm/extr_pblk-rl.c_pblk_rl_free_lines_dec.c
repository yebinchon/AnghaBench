
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int free_user_blocks; int free_blocks; } ;
struct pblk_line {int blk_in_line; } ;


 int __pblk_rl_update_rates (struct pblk_rl*,int) ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int atomic_sub_return (int,int *) ;

void pblk_rl_free_lines_dec(struct pblk_rl *rl, struct pblk_line *line,
       bool used)
{
 int blk_in_line = atomic_read(&line->blk_in_line);
 int free_blocks;

 atomic_sub(blk_in_line, &rl->free_blocks);

 if (used)
  free_blocks = atomic_sub_return(blk_in_line,
       &rl->free_user_blocks);
 else
  free_blocks = atomic_read(&rl->free_user_blocks);

 __pblk_rl_update_rates(rl, free_blocks);
}
