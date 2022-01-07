
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct st_i2c_client {int count; int xfered; } ;
struct st_i2c_dev {scalar_t__ base; struct st_i2c_client client; } ;


 scalar_t__ SSC_I2C ;
 int SSC_I2C_ACKG ;
 int SSC_I2C_TXENB ;
 scalar_t__ SSC_IEN ;
 int SSC_IEN_ARBLEN ;
 int SSC_IEN_NACKEN ;
 scalar_t__ SSC_RBUF ;
 int readl_relaxed (scalar_t__) ;
 int st_i2c_clr_bits (scalar_t__,int ) ;
 int st_i2c_rd_fill_tx_fifo (struct st_i2c_dev*,int) ;
 int st_i2c_read_rx_fifo (struct st_i2c_dev*) ;
 int st_i2c_terminate_xfer (struct st_i2c_dev*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void st_i2c_handle_read(struct st_i2c_dev *i2c_dev)
{
 struct st_i2c_client *c = &i2c_dev->client;
 u32 ien;


 if (!c->xfered) {
  readl_relaxed(i2c_dev->base + SSC_RBUF);
  st_i2c_clr_bits(i2c_dev->base + SSC_I2C, SSC_I2C_TXENB);
 } else {
  st_i2c_read_rx_fifo(i2c_dev);
 }

 if (!c->count) {

  st_i2c_terminate_xfer(i2c_dev);
 } else if (c->count == 1) {

  st_i2c_clr_bits(i2c_dev->base + SSC_I2C, SSC_I2C_ACKG);


  ien = SSC_IEN_NACKEN | SSC_IEN_ARBLEN;
  writel_relaxed(ien, i2c_dev->base + SSC_IEN);

  st_i2c_rd_fill_tx_fifo(i2c_dev, c->count);
 } else {
  st_i2c_rd_fill_tx_fifo(i2c_dev, c->count - 1);
 }
}
