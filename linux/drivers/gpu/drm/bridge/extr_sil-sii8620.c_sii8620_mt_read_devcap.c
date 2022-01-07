
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620_mt_msg {int recv; int send; int * reg; } ;
struct sii8620 {int dummy; } ;


 int MHL_READ_DEVCAP ;
 int MHL_READ_XDEVCAP ;
 struct sii8620_mt_msg* sii8620_mt_msg_new (struct sii8620*) ;
 int sii8620_mt_read_devcap_recv ;
 int sii8620_mt_read_devcap_send ;

__attribute__((used)) static void sii8620_mt_read_devcap(struct sii8620 *ctx, bool xdevcap)
{
 struct sii8620_mt_msg *msg = sii8620_mt_msg_new(ctx);

 if (!msg)
  return;

 msg->reg[0] = xdevcap ? MHL_READ_XDEVCAP : MHL_READ_DEVCAP;
 msg->send = sii8620_mt_read_devcap_send;
 msg->recv = sii8620_mt_read_devcap_recv;
}
