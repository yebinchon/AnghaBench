
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int txbuf ;
struct st7789v {int spi; } ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
typedef enum st7789v_prefix { ____Placeholder_st7789v_prefix } st7789v_prefix ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int st7789v_spi_write(struct st7789v *ctx, enum st7789v_prefix prefix,
        u8 data)
{
 struct spi_transfer xfer = { };
 struct spi_message msg;
 u16 txbuf = ((prefix & 1) << 8) | data;

 spi_message_init(&msg);

 xfer.tx_buf = &txbuf;
 xfer.bits_per_word = 9;
 xfer.len = sizeof(txbuf);

 spi_message_add_tail(&xfer, &msg);
 return spi_sync(ctx->spi, &msg);
}
