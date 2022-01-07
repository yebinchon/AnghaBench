
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int dummy; } ;


 int BIT (int ) ;
 int XOR_ACTIVATION (struct mv_xor_chan*) ;
 int dev_dbg (int ,char*) ;
 int mv_chan_to_devp (struct mv_xor_chan*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void mv_chan_activate(struct mv_xor_chan *chan)
{
 dev_dbg(mv_chan_to_devp(chan), " activate chan.\n");


 writel(BIT(0), XOR_ACTIVATION(chan));
}
