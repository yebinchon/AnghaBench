
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int idx; } ;


 int XOR_INTR_CAUSE (struct mv_xor_chan*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static void mv_chan_clear_err_status(struct mv_xor_chan *chan)
{
 u32 val = 0xFFFF0000 >> (chan->idx * 16);
 writel_relaxed(val, XOR_INTR_CAUSE(chan));
}
