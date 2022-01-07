
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next; } ;
struct msc_window {TYPE_2__* msc; TYPE_1__ entry; } ;
struct TYPE_4__ {int win_list; } ;



__attribute__((used)) static inline bool msc_is_last_win(struct msc_window *win)
{
 return win->entry.next == &win->msc->win_list;
}
