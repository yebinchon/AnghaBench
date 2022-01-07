
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct max1111_data {int * rx_buf; int * tx_buf; struct spi_transfer* xfer; struct spi_message msg; } ;


 int MAX1111_RX_BUF_SIZE ;
 int MAX1111_TX_BUF_SIZE ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;

__attribute__((used)) static int setup_transfer(struct max1111_data *data)
{
 struct spi_message *m;
 struct spi_transfer *x;

 m = &data->msg;
 x = &data->xfer[0];

 spi_message_init(m);

 x->tx_buf = &data->tx_buf[0];
 x->len = MAX1111_TX_BUF_SIZE;
 spi_message_add_tail(x, m);

 x++;
 x->rx_buf = &data->rx_buf[0];
 x->len = MAX1111_RX_BUF_SIZE;
 spi_message_add_tail(x, m);

 return 0;
}
