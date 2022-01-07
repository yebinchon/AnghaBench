
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_window {int dummy; } ;
typedef int dma_addr_t ;


 int msc_win_base_sg (struct msc_window*) ;
 int sg_dma_address (int ) ;

__attribute__((used)) static inline dma_addr_t msc_win_base_dma(struct msc_window *win)
{
 return sg_dma_address(msc_win_base_sg(win));
}
