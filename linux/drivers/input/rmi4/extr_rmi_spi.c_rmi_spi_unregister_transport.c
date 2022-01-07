
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_spi_xport {int xport; } ;


 int rmi_unregister_transport_device (int *) ;

__attribute__((used)) static void rmi_spi_unregister_transport(void *data)
{
 struct rmi_spi_xport *rmi_spi = data;

 rmi_unregister_transport_device(&rmi_spi->xport);
}
