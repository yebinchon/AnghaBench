
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_window {int dummy; } ;


 unsigned long PFN_DOWN (int ) ;
 int msc_win_base_dma (struct msc_window*) ;

__attribute__((used)) static inline unsigned long
msc_win_base_pfn(struct msc_window *win)
{
 return PFN_DOWN(msc_win_base_dma(win));
}
