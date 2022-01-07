
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;


 int CY_SPI_WR_OP ;
 int cyttsp_spi_xfer (struct device*,int *,int ,int ,void*,int ) ;

__attribute__((used)) static int cyttsp_spi_write_block_data(struct device *dev, u8 *xfer_buf,
           u16 addr, u8 length, const void *data)
{
 return cyttsp_spi_xfer(dev, xfer_buf, CY_SPI_WR_OP, addr, (void *)data,
   length);
}
