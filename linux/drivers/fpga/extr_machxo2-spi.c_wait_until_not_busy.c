
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int BUSY ;
 int EBUSY ;
 int MACHXO2_MAX_BUSY_LOOP ;
 int get_status (struct spi_device*,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static int wait_until_not_busy(struct spi_device *spi)
{
 unsigned long status;
 int ret, loop = 0;

 do {
  ret = get_status(spi, &status);
  if (ret)
   return ret;
  if (++loop >= MACHXO2_MAX_BUSY_LOOP)
   return -EBUSY;
 } while (test_bit(BUSY, &status));

 return 0;
}
