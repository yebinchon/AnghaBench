
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc_window {int dummy; } ;
struct msc_block_desc {int dummy; } ;


 int msc_win_base_sg (struct msc_window*) ;
 struct msc_block_desc* sg_virt (int ) ;

__attribute__((used)) static inline struct msc_block_desc *msc_win_base(struct msc_window *win)
{
 return sg_virt(msc_win_base_sg(win));
}
