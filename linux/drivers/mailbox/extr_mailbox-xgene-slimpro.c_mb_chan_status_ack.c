
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_mbox_chan {scalar_t__ reg; } ;


 int MBOX_STATUS_ACK_MASK ;
 scalar_t__ REG_DB_STAT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mb_chan_status_ack(struct slimpro_mbox_chan *mb_chan)
{
 u32 val = readl(mb_chan->reg + REG_DB_STAT);

 if (val & MBOX_STATUS_ACK_MASK) {
  writel(MBOX_STATUS_ACK_MASK, mb_chan->reg + REG_DB_STAT);
  return 1;
 }
 return 0;
}
