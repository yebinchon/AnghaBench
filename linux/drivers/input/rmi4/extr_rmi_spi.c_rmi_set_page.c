
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_spi_xport {int page; } ;
struct rmi_spi_cmd {int addr; int op; } ;


 int RMI_PAGE_SELECT_REGISTER ;
 int RMI_SPI_WRITE ;
 int rmi_spi_xfer (struct rmi_spi_xport*,struct rmi_spi_cmd*,int *,int,int *,int ) ;

__attribute__((used)) static int rmi_set_page(struct rmi_spi_xport *rmi_spi, u8 page)
{
 struct rmi_spi_cmd cmd;
 int ret;

 cmd.op = RMI_SPI_WRITE;
 cmd.addr = RMI_PAGE_SELECT_REGISTER;

 ret = rmi_spi_xfer(rmi_spi, &cmd, &page, 1, ((void*)0), 0);

 if (ret)
  rmi_spi->page = page;

 return ret;
}
