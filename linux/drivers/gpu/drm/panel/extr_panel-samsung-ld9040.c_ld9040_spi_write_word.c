
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ld9040 {int dev; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int ld9040_spi_write_word(struct ld9040 *ctx, u16 data)
{
 struct spi_device *spi = to_spi_device(ctx->dev);
 struct spi_transfer xfer = {
  .len = 2,
  .tx_buf = &data,
 };
 struct spi_message msg;

 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(spi, &msg);
}
