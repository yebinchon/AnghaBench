
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {int * start_block; scalar_t__ start_win; scalar_t__ win; } ;
struct msc {int dummy; } ;


 int EINVAL ;
 int msc_iter_block_start (struct msc_iter*) ;
 scalar_t__ msc_oldest_window (struct msc*) ;

__attribute__((used)) static int msc_iter_win_start(struct msc_iter *iter, struct msc *msc)
{

 if (iter->start_win)
  return 0;

 iter->start_win = msc_oldest_window(msc);
 if (!iter->start_win)
  return -EINVAL;

 iter->win = iter->start_win;
 iter->start_block = ((void*)0);

 msc_iter_block_start(iter);

 return 0;
}
