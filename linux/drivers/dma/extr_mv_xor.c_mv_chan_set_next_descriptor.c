
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_NEXT_DESC (struct mv_xor_chan*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void mv_chan_set_next_descriptor(struct mv_xor_chan *chan,
     u32 next_desc_addr)
{
 writel_relaxed(next_desc_addr, XOR_NEXT_DESC(chan));
}
