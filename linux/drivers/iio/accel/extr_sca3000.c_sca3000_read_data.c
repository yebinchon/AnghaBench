
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct sca3000_state {TYPE_1__* us; int * tx; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct spi_transfer*) ;
 int SCA3000_READ_REG (int ) ;
 int dev_err (int ,char*) ;
 int get_device (int *) ;
 int spi_sync_transfer (TYPE_1__*,struct spi_transfer*,int ) ;

__attribute__((used)) static int sca3000_read_data(struct sca3000_state *st,
        u8 reg_address_high,
        u8 *rx,
        int len)
{
 int ret;
 struct spi_transfer xfer[2] = {
  {
   .len = 1,
   .tx_buf = st->tx,
  }, {
   .len = len,
   .rx_buf = rx,
  }
 };

 st->tx[0] = SCA3000_READ_REG(reg_address_high);
 ret = spi_sync_transfer(st->us, xfer, ARRAY_SIZE(xfer));
 if (ret) {
  dev_err(get_device(&st->us->dev), "problem reading register");
  return ret;
 }

 return 0;
}
