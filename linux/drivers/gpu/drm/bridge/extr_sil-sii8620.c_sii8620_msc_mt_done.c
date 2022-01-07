
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620_mt_msg {int ret; } ;
struct sii8620 {int mt_state; } ;


 int MT_STATE_DONE ;
 int REG_MSC_MT_RCVD_DATA0 ;
 struct sii8620_mt_msg* sii8620_msc_msg_first (struct sii8620*) ;
 int sii8620_readb (struct sii8620*,int ) ;

__attribute__((used)) static void sii8620_msc_mt_done(struct sii8620 *ctx)
{
 struct sii8620_mt_msg *msg = sii8620_msc_msg_first(ctx);

 if (!msg)
  return;

 msg->ret = sii8620_readb(ctx, REG_MSC_MT_RCVD_DATA0);
 ctx->mt_state = MT_STATE_DONE;
}
