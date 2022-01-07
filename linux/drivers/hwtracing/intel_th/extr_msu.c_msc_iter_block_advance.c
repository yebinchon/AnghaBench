
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {scalar_t__ block; scalar_t__ start_block; scalar_t__ wrap_count; int win; scalar_t__ block_off; } ;


 scalar_t__ msc_block_last_written (int ) ;
 int msc_iter_bdesc (struct msc_iter*) ;
 int msc_iter_win_advance (struct msc_iter*) ;
 scalar_t__ msc_win_base_sg (int ) ;
 scalar_t__ sg_is_last (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;

__attribute__((used)) static int msc_iter_block_advance(struct msc_iter *iter)
{
 iter->block_off = 0;


 if (iter->wrap_count && iter->block == iter->start_block) {
  iter->wrap_count--;
  if (!iter->wrap_count)

   return msc_iter_win_advance(iter);
 }


 if (!iter->wrap_count && msc_block_last_written(msc_iter_bdesc(iter)))

  return msc_iter_win_advance(iter);


 if (sg_is_last(iter->block))
  iter->block = msc_win_base_sg(iter->win);
 else
  iter->block = sg_next(iter->block);


 if (!iter->wrap_count && iter->block == iter->start_block)
  return msc_iter_win_advance(iter);

 return 0;
}
