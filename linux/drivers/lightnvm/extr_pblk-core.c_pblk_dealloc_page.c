
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pblk_line {int lock; int map_bitmap; scalar_t__ cur_sec; } ;
struct TYPE_2__ {int sec_per_line; } ;
struct pblk {TYPE_1__ lm; } ;


 int WARN_ON (int) ;
 scalar_t__ find_next_zero_bit (int ,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (scalar_t__,int ) ;

void pblk_dealloc_page(struct pblk *pblk, struct pblk_line *line, int nr_secs)
{
 u64 addr;
 int i;

 spin_lock(&line->lock);
 addr = find_next_zero_bit(line->map_bitmap,
     pblk->lm.sec_per_line, line->cur_sec);
 line->cur_sec = addr - nr_secs;

 for (i = 0; i < nr_secs; i++, line->cur_sec--)
  WARN_ON(!test_and_clear_bit(line->cur_sec, line->map_bitmap));
 spin_unlock(&line->lock);
}
