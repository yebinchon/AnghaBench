
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int BIT_MDT_IDLE_AFTER_HAWB_DISABLE ;
 int BIT_MDT_RCV_SM_ABORT_PKT_RCVD ;
 int BIT_MDT_RCV_SM_ERROR ;
 int BIT_MDT_RCV_TIMEOUT ;
 int BIT_MDT_RFIFO_DATA_RDY ;
 int BIT_MDT_XFIFO_EMPTY ;
 int BIT_MDT_XMIT_SM_ABORT_PKT_RCVD ;
 int BIT_MDT_XMIT_SM_ERROR ;
 int BIT_MDT_XMIT_TIMEOUT ;
 int REG_MDT_INT_0_MASK ;
 int REG_MDT_INT_1_MASK ;
 int sii8620_enable_gen2_write_burst (struct sii8620*) ;
 int sii8620_write_seq_static (struct sii8620*,int ,int,int ,int) ;

__attribute__((used)) static void sii8620_start_gen2_write_burst(struct sii8620 *ctx)
{
 sii8620_write_seq_static(ctx,
  REG_MDT_INT_1_MASK, BIT_MDT_RCV_TIMEOUT
   | BIT_MDT_RCV_SM_ABORT_PKT_RCVD | BIT_MDT_RCV_SM_ERROR
   | BIT_MDT_XMIT_TIMEOUT | BIT_MDT_XMIT_SM_ABORT_PKT_RCVD
   | BIT_MDT_XMIT_SM_ERROR,
  REG_MDT_INT_0_MASK, BIT_MDT_XFIFO_EMPTY
   | BIT_MDT_IDLE_AFTER_HAWB_DISABLE
   | BIT_MDT_RFIFO_DATA_RDY
 );
 sii8620_enable_gen2_write_burst(ctx);
}
