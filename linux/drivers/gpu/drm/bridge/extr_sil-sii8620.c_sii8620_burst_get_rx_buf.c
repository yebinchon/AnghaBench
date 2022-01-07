
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* rx_buf; size_t rx_count; scalar_t__ tx_count; int tx_buf; } ;
struct sii8620 {TYPE_1__ burst; int error; int dev; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int EINVAL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static u8 *sii8620_burst_get_rx_buf(struct sii8620 *ctx, int len)
{
 u8 *buf = &ctx->burst.rx_buf[ctx->burst.rx_count];
 int size = len + 1;

 if (ctx->burst.tx_count + size > ARRAY_SIZE(ctx->burst.tx_buf)) {
  dev_err(ctx->dev, "RX-BLK buffer exhausted\n");
  ctx->error = -EINVAL;
  return ((void*)0);
 }

 ctx->burst.rx_count += size;
 buf[0] = len;

 return buf + 1;
}
