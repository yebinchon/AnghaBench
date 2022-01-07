
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_i2c_dev {scalar_t__ base; } ;


 scalar_t__ SSC_CTL ;
 int SSC_CTL_SR ;
 int st_i2c_clr_bits (scalar_t__,int ) ;
 int st_i2c_flush_rx_fifo (struct st_i2c_dev*) ;
 int st_i2c_set_bits (scalar_t__,int ) ;

__attribute__((used)) static void st_i2c_soft_reset(struct st_i2c_dev *i2c_dev)
{




 st_i2c_flush_rx_fifo(i2c_dev);

 st_i2c_set_bits(i2c_dev->base + SSC_CTL, SSC_CTL_SR);
 st_i2c_clr_bits(i2c_dev->base + SSC_CTL, SSC_CTL_SR);
}
