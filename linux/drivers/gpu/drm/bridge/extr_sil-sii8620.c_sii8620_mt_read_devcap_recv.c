
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620_mt_msg {scalar_t__* reg; } ;
struct sii8620 {int dummy; } ;


 int BIT_EDID_CTRL_DEVCAP_SELECT_DEVCAP ;
 int BIT_EDID_CTRL_EDID_FIFO_ADDR_AUTO ;
 int BIT_EDID_CTRL_EDID_MODE_EN ;
 int BIT_EDID_CTRL_XDEVCAP_EN ;
 int BIT_INTR9_DEVCAP_DONE ;
 int BIT_INTR9_EDID_DONE ;
 int BIT_INTR9_EDID_ERROR ;
 scalar_t__ MHL_READ_XDEVCAP ;
 int REG_EDID_CTRL ;
 int REG_EDID_FIFO_ADDR ;
 int REG_INTR9_MASK ;
 int sii8620_mr_devcap (struct sii8620*) ;
 int sii8620_mr_xdevcap (struct sii8620*) ;
 int sii8620_write_seq (struct sii8620*,int ,int,int ,int,int ,int ) ;

__attribute__((used)) static void sii8620_mt_read_devcap_recv(struct sii8620 *ctx,
     struct sii8620_mt_msg *msg)
{
 u8 ctrl = BIT_EDID_CTRL_DEVCAP_SELECT_DEVCAP
  | BIT_EDID_CTRL_EDID_FIFO_ADDR_AUTO
  | BIT_EDID_CTRL_EDID_MODE_EN;

 if (msg->reg[0] == MHL_READ_XDEVCAP)
  ctrl |= BIT_EDID_CTRL_XDEVCAP_EN;

 sii8620_write_seq(ctx,
  REG_INTR9_MASK, BIT_INTR9_DEVCAP_DONE | BIT_INTR9_EDID_DONE
   | BIT_INTR9_EDID_ERROR,
  REG_EDID_CTRL, ctrl,
  REG_EDID_FIFO_ADDR, 0
 );

 if (msg->reg[0] == MHL_READ_XDEVCAP)
  sii8620_mr_xdevcap(ctx);
 else
  sii8620_mr_devcap(ctx);
}
