
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sii8620 {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN ;
 int BIT_MDT_RCV_CTRL_MDT_RCV_EN ;
 int BIT_MDT_RCV_CTRL_MDT_RFIFO_CLR_CUR ;
 int REG_MDT_RCV_CTRL ;
 int REG_MDT_RCV_READ_PORT ;
 int REG_MDT_RFIFO_STAT ;
 int sii8620_read_buf (struct sii8620*,int ,int *,int ) ;
 int sii8620_readb (struct sii8620*,int ) ;
 int sii8620_write (struct sii8620*,int ,int) ;

__attribute__((used)) static void sii8620_read_burst(struct sii8620 *ctx)
{
 u8 buf[17];

 sii8620_read_buf(ctx, REG_MDT_RCV_READ_PORT, buf, ARRAY_SIZE(buf));
 sii8620_write(ctx, REG_MDT_RCV_CTRL, BIT_MDT_RCV_CTRL_MDT_RCV_EN |
        BIT_MDT_RCV_CTRL_MDT_DELAY_RCV_EN |
        BIT_MDT_RCV_CTRL_MDT_RFIFO_CLR_CUR);
 sii8620_readb(ctx, REG_MDT_RFIFO_STAT);
}
