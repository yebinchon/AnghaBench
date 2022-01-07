
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msc_window {int sgt; int entry; scalar_t__ nr_blocks; } ;
struct msc {int mbuf_priv; TYPE_1__* mbuf; scalar_t__ base_addr; int * base; int win_list; int nr_pages; } ;
struct TYPE_2__ {int (* free_window ) (int ,int ) ;} ;


 int __msc_buffer_win_free (struct msc*,struct msc_window*) ;
 int kfree (struct msc_window*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int msc_buffer_set_wb (struct msc_window*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void msc_buffer_win_free(struct msc *msc, struct msc_window *win)
{
 msc->nr_pages -= win->nr_blocks;

 list_del(&win->entry);
 if (list_empty(&msc->win_list)) {
  msc->base = ((void*)0);
  msc->base_addr = 0;
 }

 msc_buffer_set_wb(win);

 if (msc->mbuf && msc->mbuf->free_window)
  msc->mbuf->free_window(msc->mbuf_priv, win->sgt);
 else
  __msc_buffer_win_free(msc, win);

 kfree(win);
}
