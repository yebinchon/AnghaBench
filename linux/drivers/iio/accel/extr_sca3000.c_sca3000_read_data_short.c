
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int len; int rx_buf; int * tx_buf; } ;
struct sca3000_state {int us; int * tx; int rx; } ;


 int ARRAY_SIZE (struct spi_transfer*) ;
 int SCA3000_READ_REG (int ) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int sca3000_read_data_short(struct sca3000_state *st,
       u8 reg_address_high,
       int len)
{
 struct spi_transfer xfer[2] = {
  {
   .len = 1,
   .tx_buf = st->tx,
  }, {
   .len = len,
   .rx_buf = st->rx,
  }
 };
 st->tx[0] = SCA3000_READ_REG(reg_address_high);

 return spi_sync_transfer(st->us, xfer, ARRAY_SIZE(xfer));
}
