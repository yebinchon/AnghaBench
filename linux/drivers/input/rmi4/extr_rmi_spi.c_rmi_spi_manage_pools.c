
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_transfer {int dummy; } ;
struct spi_device {int dev; } ;
struct TYPE_4__ {scalar_t__ write_delay_us; scalar_t__ read_delay_us; } ;
struct TYPE_5__ {TYPE_1__ spi_data; } ;
struct TYPE_6__ {TYPE_2__ pdata; } ;
struct rmi_spi_xport {int xfer_buf_size; int rx_xfer_count; int tx_xfer_count; struct spi_transfer* tx_xfers; struct spi_transfer* rx_xfers; TYPE_3__ xport; int * rx_buf; int * tx_buf; struct spi_device* spi; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int RMI_SPI_DEFAULT_XFER_BUF_SIZE ;
 int RMI_SPI_XFER_SIZE_LIMIT ;
 void* devm_kcalloc (int *,int,int,int) ;
 int devm_kfree (int *,void*) ;

__attribute__((used)) static int rmi_spi_manage_pools(struct rmi_spi_xport *rmi_spi, int len)
{
 struct spi_device *spi = rmi_spi->spi;
 int buf_size = rmi_spi->xfer_buf_size
  ? rmi_spi->xfer_buf_size : RMI_SPI_DEFAULT_XFER_BUF_SIZE;
 struct spi_transfer *xfer_buf;
 void *buf;
 void *tmp;

 while (buf_size < len)
  buf_size *= 2;

 if (buf_size > RMI_SPI_XFER_SIZE_LIMIT)
  buf_size = RMI_SPI_XFER_SIZE_LIMIT;

 tmp = rmi_spi->rx_buf;
 buf = devm_kcalloc(&spi->dev, buf_size, 2,
    GFP_KERNEL | GFP_DMA);
 if (!buf)
  return -ENOMEM;

 rmi_spi->rx_buf = buf;
 rmi_spi->tx_buf = &rmi_spi->rx_buf[buf_size];
 rmi_spi->xfer_buf_size = buf_size;

 if (tmp)
  devm_kfree(&spi->dev, tmp);

 if (rmi_spi->xport.pdata.spi_data.read_delay_us)
  rmi_spi->rx_xfer_count = buf_size;
 else
  rmi_spi->rx_xfer_count = 1;

 if (rmi_spi->xport.pdata.spi_data.write_delay_us)
  rmi_spi->tx_xfer_count = buf_size;
 else
  rmi_spi->tx_xfer_count = 1;





 tmp = rmi_spi->rx_xfers;
 xfer_buf = devm_kcalloc(&spi->dev,
  rmi_spi->rx_xfer_count + rmi_spi->tx_xfer_count,
  sizeof(struct spi_transfer),
  GFP_KERNEL);
 if (!xfer_buf)
  return -ENOMEM;

 rmi_spi->rx_xfers = xfer_buf;
 rmi_spi->tx_xfers = &xfer_buf[rmi_spi->rx_xfer_count];

 if (tmp)
  devm_kfree(&spi->dev, tmp);

 return 0;
}
