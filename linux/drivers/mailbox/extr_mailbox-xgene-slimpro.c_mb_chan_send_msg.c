
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_mbox_chan {scalar_t__ reg; } ;


 scalar_t__ REG_DB_DOUT0 ;
 scalar_t__ REG_DB_DOUT1 ;
 scalar_t__ REG_DB_OUT ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mb_chan_send_msg(struct slimpro_mbox_chan *mb_chan, u32 *msg)
{
 writel(msg[1], mb_chan->reg + REG_DB_DOUT0);
 writel(msg[2], mb_chan->reg + REG_DB_DOUT1);
 writel(msg[0], mb_chan->reg + REG_DB_OUT);
}
