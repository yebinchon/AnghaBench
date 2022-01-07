
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_fifo_chan {int chid; } ;



__attribute__((used)) static u32
gv100_fifo_gpfifo_submit_token(struct nvkm_fifo_chan *chan)
{
 return chan->chid;
}
