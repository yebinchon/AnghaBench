
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {void* tx_buf; void* rx_buf; size_t len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int mcp4131_read(struct spi_device *spi, void *buf, size_t len)
{
 struct spi_transfer t = {
  .tx_buf = buf,
  .rx_buf = buf,
  .len = len,
 };
 struct spi_message m;

 spi_message_init(&m);
 spi_message_add_tail(&t, &m);

 return spi_sync(spi, &m);
}
