
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbpf_channel {int dmarq_cfg; scalar_t__ flags; scalar_t__ terminal; } ;


 int NBPF_CHAN_CFG_AM ;

__attribute__((used)) static void nbpf_chan_prepare_default(struct nbpf_channel *chan)
{

 chan->dmarq_cfg = NBPF_CHAN_CFG_AM & 0x400;
 chan->terminal = 0;
 chan->flags = 0;
}
