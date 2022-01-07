
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int t ;
struct tpg110 {int dev; int spi; } ;
struct spi_transfer {int bits_per_word; int* tx_buf; int len; int* rx_buf; } ;
struct spi_message {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static u8 tpg110_readwrite_reg(struct tpg110 *tpg, bool write,
          u8 address, u8 outval)
{
 struct spi_message m;
 struct spi_transfer t[2];
 u8 buf[2];
 int ret;

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 if (write) {





  buf[0] = address << 2;
  buf[0] &= ~0x03;
  buf[1] = outval;

  t[0].bits_per_word = 8;
  t[0].tx_buf = &buf[0];
  t[0].len = 1;

  t[1].tx_buf = &buf[1];
  t[1].len = 1;
  t[1].bits_per_word = 8;
 } else {

  buf[0] = address << 1;
  buf[0] |= 0x01;






  t[0].bits_per_word = 7;
  t[0].tx_buf = &buf[0];
  t[0].len = 1;

  t[1].rx_buf = &buf[1];
  t[1].len = 1;
  t[1].bits_per_word = 8;
 }

 spi_message_add_tail(&t[0], &m);
 spi_message_add_tail(&t[1], &m);
 ret = spi_sync(tpg->spi, &m);
 if (ret) {
  DRM_DEV_ERROR(tpg->dev, "SPI message error %d\n", ret);
  return ret;
 }
 if (write)
  return 0;

 return buf[1];
}
