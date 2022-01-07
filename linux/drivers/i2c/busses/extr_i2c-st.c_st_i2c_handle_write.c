
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_i2c_client {int count; } ;
struct st_i2c_dev {struct st_i2c_client client; } ;


 int st_i2c_flush_rx_fifo (struct st_i2c_dev*) ;
 int st_i2c_terminate_xfer (struct st_i2c_dev*) ;
 int st_i2c_wr_fill_tx_fifo (struct st_i2c_dev*) ;

__attribute__((used)) static void st_i2c_handle_write(struct st_i2c_dev *i2c_dev)
{
 struct st_i2c_client *c = &i2c_dev->client;

 st_i2c_flush_rx_fifo(i2c_dev);

 if (!c->count)

  st_i2c_terminate_xfer(i2c_dev);
 else
  st_i2c_wr_fill_tx_fifo(i2c_dev);
}
