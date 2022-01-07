
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mdc_chan {int chan_nr; int mdma; } ;


 scalar_t__ mdc_readl (int ,scalar_t__) ;

__attribute__((used)) static inline u32 mdc_chan_readl(struct mdc_chan *mchan, u32 reg)
{
 return mdc_readl(mchan->mdma, mchan->chan_nr * 0x040 + reg);
}
