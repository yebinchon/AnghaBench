
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int bits_per_word; int len; int * rx_buf; int * tx_buf; } ;
struct adxrs450_state {int buf_lock; int rx; TYPE_1__* us; int tx; } ;
struct TYPE_2__ {int dev; } ;


 int ADXRS450_CHK ;
 int ADXRS450_P ;
 int ADXRS450_SENSOR_DATA ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (TYPE_1__*,struct spi_transfer*,int) ;

__attribute__((used)) static int adxrs450_spi_initial(struct adxrs450_state *st,
  u32 *val, char chk)
{
 int ret;
 u32 tx;
 struct spi_transfer xfers = {
  .tx_buf = &st->tx,
  .rx_buf = &st->rx,
  .bits_per_word = 8,
  .len = sizeof(st->tx),
 };

 mutex_lock(&st->buf_lock);
 tx = ADXRS450_SENSOR_DATA;
 if (chk)
  tx |= (ADXRS450_CHK | ADXRS450_P);
 st->tx = cpu_to_be32(tx);
 ret = spi_sync_transfer(st->us, &xfers, 1);
 if (ret) {
  dev_err(&st->us->dev, "Problem while reading initializing data\n");
  goto error_ret;
 }

 *val = be32_to_cpu(st->rx);

error_ret:
 mutex_unlock(&st->buf_lock);
 return ret;
}
