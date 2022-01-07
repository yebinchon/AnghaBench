
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coh_dma_channel {int dummy; } ;
struct coh901318_chan {size_t id; } ;


 struct coh_dma_channel const* chan_config ;

__attribute__((used)) static inline const struct coh_dma_channel *
cohc_chan_conf(struct coh901318_chan *cohc)
{
 return &chan_config[cohc->id];
}
