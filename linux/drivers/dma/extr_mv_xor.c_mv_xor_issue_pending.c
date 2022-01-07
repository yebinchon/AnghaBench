
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {scalar_t__ pending; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ MV_XOR_THRESHOLD ;
 int mv_chan_activate (struct mv_xor_chan*) ;
 struct mv_xor_chan* to_mv_xor_chan (struct dma_chan*) ;

__attribute__((used)) static void mv_xor_issue_pending(struct dma_chan *chan)
{
 struct mv_xor_chan *mv_chan = to_mv_xor_chan(chan);

 if (mv_chan->pending >= MV_XOR_THRESHOLD) {
  mv_chan->pending = 0;
  mv_chan_activate(mv_chan);
 }
}
