
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5758_state {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ad5758_spi_reg_read (struct ad5758_state*,unsigned int) ;
 int dev_err (int *,char*,unsigned int,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ad5758_wait_for_task_complete(struct ad5758_state *st,
      unsigned int reg,
      unsigned int mask)
{
 unsigned int timeout;
 int ret;

 timeout = 10;
 do {
  ret = ad5758_spi_reg_read(st, reg);
  if (ret < 0)
   return ret;

  if (!(ret & mask))
   return 0;

  usleep_range(100, 1000);
 } while (--timeout);

 dev_err(&st->spi->dev,
  "Error reading bit 0x%x in 0x%x register\n", mask, reg);

 return -EIO;
}
