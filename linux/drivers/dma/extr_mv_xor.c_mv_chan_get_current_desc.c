
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int dummy; } ;


 int XOR_CURR_DESC (struct mv_xor_chan*) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static u32 mv_chan_get_current_desc(struct mv_xor_chan *chan)
{
 return readl_relaxed(XOR_CURR_DESC(chan));
}
