
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mdc_chan {int chan_nr; int mdma; } ;


 int mdc_writel (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mdc_chan_writel(struct mdc_chan *mchan, u32 val, u32 reg)
{
 mdc_writel(mchan->mdma, val, mchan->chan_nr * 0x040 + reg);
}
