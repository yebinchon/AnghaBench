
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int num_chan; } ;
struct TYPE_4__ {TYPE_1__ spu; int next_chan; } ;


 int atomic_inc_return (int *) ;
 TYPE_2__ iproc_priv ;

__attribute__((used)) static u8 select_channel(void)
{
 u8 chan_idx = atomic_inc_return(&iproc_priv.next_chan);

 return chan_idx % iproc_priv.spu.num_chan;
}
