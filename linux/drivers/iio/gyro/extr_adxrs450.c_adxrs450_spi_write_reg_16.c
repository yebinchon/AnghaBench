
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iio_dev {int dummy; } ;
struct adxrs450_state {int buf_lock; TYPE_1__* us; int tx; } ;
struct TYPE_2__ {int dev; } ;


 int ADXRS450_P ;
 int ADXRS450_WRITE_DATA ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*,int) ;
 int hweight32 (int) ;
 struct adxrs450_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (TYPE_1__*,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int adxrs450_spi_write_reg_16(struct iio_dev *indio_dev,
         u8 reg_address,
         u16 val)
{
 struct adxrs450_state *st = iio_priv(indio_dev);
 u32 tx;
 int ret;

 mutex_lock(&st->buf_lock);
 tx = ADXRS450_WRITE_DATA | (reg_address << 17) | (val << 1);

 if (!(hweight32(tx) & 1))
  tx |= ADXRS450_P;

 st->tx = cpu_to_be32(tx);
 ret = spi_write(st->us, &st->tx, sizeof(st->tx));
 if (ret)
  dev_err(&st->us->dev, "problem while writing 16 bit register 0x%02x\n",
   reg_address);
 usleep_range(100, 1000);
 mutex_unlock(&st->buf_lock);
 return ret;
}
