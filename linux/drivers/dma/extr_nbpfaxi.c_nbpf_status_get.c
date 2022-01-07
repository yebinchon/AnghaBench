
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbpf_channel {TYPE_1__* nbpf; } ;
struct TYPE_2__ {int chan; } ;


 int BIT (struct nbpf_channel*) ;
 int NBPF_DSTAT_END ;
 int nbpf_read (TYPE_1__*,int ) ;

__attribute__((used)) static bool nbpf_status_get(struct nbpf_channel *chan)
{
 u32 status = nbpf_read(chan->nbpf, NBPF_DSTAT_END);

 return status & BIT(chan - chan->nbpf->chan);
}
