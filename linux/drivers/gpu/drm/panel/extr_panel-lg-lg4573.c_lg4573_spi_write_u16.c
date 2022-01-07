
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct lg4573 {int spi; TYPE_1__ panel; } ;


 int cpu_to_be16 (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int lg4573_spi_write_u16(struct lg4573 *ctx, u16 data)
{
 struct spi_transfer xfer = {
  .len = 2,
 };
 u16 temp = cpu_to_be16(data);
 struct spi_message msg;

 dev_dbg(ctx->panel.dev, "writing data: %x\n", data);
 xfer.tx_buf = &temp;
 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(ctx->spi, &msg);
}
