
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pblk_line {int lock; int cur_sec; int map_bitmap; } ;
struct TYPE_2__ {int sec_per_line; } ;
struct pblk {TYPE_1__ lm; } ;


 int find_next_zero_bit (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 pblk_lookup_page(struct pblk *pblk, struct pblk_line *line)
{
 u64 paddr;

 spin_lock(&line->lock);
 paddr = find_next_zero_bit(line->map_bitmap,
     pblk->lm.sec_per_line, line->cur_sec);
 spin_unlock(&line->lock);

 return paddr;
}
