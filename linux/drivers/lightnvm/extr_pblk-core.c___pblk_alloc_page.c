
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pblk_line {scalar_t__ cur_sec; int map_bitmap; int lock; } ;
struct TYPE_2__ {scalar_t__ sec_per_line; } ;
struct pblk {TYPE_1__ lm; } ;


 int WARN (int,char*) ;
 int WARN_ON (int ) ;
 int find_next_zero_bit (int ,int,int) ;
 int lockdep_assert_held (int *) ;
 int test_and_set_bit (int,int ) ;

u64 __pblk_alloc_page(struct pblk *pblk, struct pblk_line *line, int nr_secs)
{
 u64 addr;
 int i;

 lockdep_assert_held(&line->lock);


 if (line->cur_sec + nr_secs > pblk->lm.sec_per_line) {
  WARN(1, "pblk: page allocation out of bounds\n");
  nr_secs = pblk->lm.sec_per_line - line->cur_sec;
 }

 line->cur_sec = addr = find_next_zero_bit(line->map_bitmap,
     pblk->lm.sec_per_line, line->cur_sec);
 for (i = 0; i < nr_secs; i++, line->cur_sec++)
  WARN_ON(test_and_set_bit(line->cur_sec, line->map_bitmap));

 return addr;
}
