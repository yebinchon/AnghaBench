
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbpf_channel {int dmarq_cfg; } ;


 int NBPF_CHAN_CFG ;
 int NBPF_CHAN_CFG_DMS ;
 int nbpf_chan_write (struct nbpf_channel*,int ,int) ;

__attribute__((used)) static void nbpf_chan_configure(struct nbpf_channel *chan)
{





 nbpf_chan_write(chan, NBPF_CHAN_CFG, NBPF_CHAN_CFG_DMS | chan->dmarq_cfg);
}
