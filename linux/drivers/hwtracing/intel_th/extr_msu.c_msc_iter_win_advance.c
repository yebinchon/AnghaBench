
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_iter {scalar_t__ win; scalar_t__ start_win; int eof; int * start_block; } ;


 int msc_iter_block_start (struct msc_iter*) ;
 scalar_t__ msc_next_window (scalar_t__) ;

__attribute__((used)) static int msc_iter_win_advance(struct msc_iter *iter)
{
 iter->win = msc_next_window(iter->win);
 iter->start_block = ((void*)0);

 if (iter->win == iter->start_win) {
  iter->eof++;
  return 1;
 }

 msc_iter_block_start(iter);

 return 0;
}
