
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int free_blocks; } ;


 unsigned long atomic_read (int *) ;

unsigned long pblk_rl_nr_free_blks(struct pblk_rl *rl)
{
 return atomic_read(&rl->free_blocks);
}
