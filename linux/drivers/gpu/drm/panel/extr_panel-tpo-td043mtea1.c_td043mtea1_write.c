
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfer ;
typedef int u8 ;
typedef int u16 ;
struct td043mtea1_panel {TYPE_1__* spi; } ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static int td043mtea1_write(struct td043mtea1_panel *lcd, u8 addr, u8 value)
{
 struct spi_message msg;
 struct spi_transfer xfer;
 u16 data;
 int ret;

 spi_message_init(&msg);

 memset(&xfer, 0, sizeof(xfer));

 data = ((u16)addr << 10) | (1 << 8) | value;
 xfer.tx_buf = &data;
 xfer.bits_per_word = 16;
 xfer.len = 2;
 spi_message_add_tail(&xfer, &msg);

 ret = spi_sync(lcd->spi, &msg);
 if (ret < 0)
  dev_warn(&lcd->spi->dev, "failed to write to LCD reg (%d)\n",
    ret);

 return ret;
}
