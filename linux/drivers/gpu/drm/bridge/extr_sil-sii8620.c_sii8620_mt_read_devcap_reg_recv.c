
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sii8620_mt_msg {int* reg; int ret; } ;
struct sii8620 {int * devcap; int * xdevcap; } ;



__attribute__((used)) static void sii8620_mt_read_devcap_reg_recv(struct sii8620 *ctx,
  struct sii8620_mt_msg *msg)
{
 u8 reg = msg->reg[1] & 0x7f;

 if (msg->reg[1] & 0x80)
  ctx->xdevcap[reg] = msg->ret;
 else
  ctx->devcap[reg] = msg->ret;
}
