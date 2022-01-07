
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct ad7606_state {int * d16; TYPE_1__* bops; int dev; } ;
struct TYPE_2__ {int (* rd_wr_cmd ) (unsigned int,int) ;} ;


 int cpu_to_be16 (int) ;
 int spi_write (struct spi_device*,int *,int) ;
 int stub1 (unsigned int,int) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int ad7606_spi_reg_write(struct ad7606_state *st,
    unsigned int addr,
    unsigned int val)
{
 struct spi_device *spi = to_spi_device(st->dev);

 st->d16[0] = cpu_to_be16((st->bops->rd_wr_cmd(addr, 1) << 8) |
      (val & 0x1FF));

 return spi_write(spi, &st->d16[0], sizeof(st->d16[0]));
}
