
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfer ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
struct ad714x_chip {int * xfer_buf; int dev; } ;


 unsigned short AD714x_SPI_CMD_PREFIX ;
 unsigned short AD714x_SPI_READ ;
 unsigned short be16_to_cpu (int ) ;
 int cpu_to_be16 (unsigned short) ;
 int dev_err (int ,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct spi_device* to_spi_device (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ad714x_spi_read(struct ad714x_chip *chip,
      unsigned short reg, unsigned short *data, size_t len)
{
 struct spi_device *spi = to_spi_device(chip->dev);
 struct spi_message message;
 struct spi_transfer xfer[2];
 int i;
 int error;

 spi_message_init(&message);
 memset(xfer, 0, sizeof(xfer));

 chip->xfer_buf[0] = cpu_to_be16(AD714x_SPI_CMD_PREFIX |
     AD714x_SPI_READ | reg);
 xfer[0].tx_buf = &chip->xfer_buf[0];
 xfer[0].len = sizeof(chip->xfer_buf[0]);
 spi_message_add_tail(&xfer[0], &message);

 xfer[1].rx_buf = &chip->xfer_buf[1];
 xfer[1].len = sizeof(chip->xfer_buf[1]) * len;
 spi_message_add_tail(&xfer[1], &message);

 error = spi_sync(spi, &message);
 if (unlikely(error)) {
  dev_err(chip->dev, "SPI read error: %d\n", error);
  return error;
 }

 for (i = 0; i < len; i++)
  data[i] = be16_to_cpu(chip->xfer_buf[i + 1]);

 return 0;
}
