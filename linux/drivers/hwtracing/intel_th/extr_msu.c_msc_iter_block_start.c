
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int wrap_count; scalar_t__ start_block; scalar_t__ block; int win; } ;


 scalar_t__ msc_block_wrapped (int ) ;
 int msc_iter_bdesc (struct msc_iter*) ;
 scalar_t__ msc_win_oldest_sg (int ) ;

__attribute__((used)) static void msc_iter_block_start(struct msc_iter *iter)
{
 if (iter->start_block)
  return;

 iter->start_block = msc_win_oldest_sg(iter->win);
 iter->block = iter->start_block;
 iter->wrap_count = 0;





 if (msc_block_wrapped(msc_iter_bdesc(iter)))
  iter->wrap_count = 2;

}
