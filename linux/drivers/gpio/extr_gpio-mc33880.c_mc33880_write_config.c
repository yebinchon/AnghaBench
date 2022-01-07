
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc33880 {int port_config; int spi; } ;


 int spi_write (int ,int *,int) ;

__attribute__((used)) static int mc33880_write_config(struct mc33880 *mc)
{
 return spi_write(mc->spi, &mc->port_config, sizeof(mc->port_config));
}
