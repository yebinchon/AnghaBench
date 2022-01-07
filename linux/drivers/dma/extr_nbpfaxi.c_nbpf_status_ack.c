
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbpf_channel {int dummy; } ;


 int NBPF_CHAN_CTRL ;
 int NBPF_CHAN_CTRL_CLREND ;
 int nbpf_chan_write (struct nbpf_channel*,int ,int ) ;

__attribute__((used)) static void nbpf_status_ack(struct nbpf_channel *chan)
{
 nbpf_chan_write(chan, NBPF_CHAN_CTRL, NBPF_CHAN_CTRL_CLREND);
}
