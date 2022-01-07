
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int user; } ;
struct nv50_disp_chan {TYPE_1__ chid; } ;



u64
nv50_disp_chan_user(struct nv50_disp_chan *chan, u64 *psize)
{
 *psize = 0x1000;
 return 0x640000 + (chan->chid.user * 0x1000);
}
