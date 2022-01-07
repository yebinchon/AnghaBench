
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_spi_conf {int done; } ;
struct fpga_manager {int dev; struct xilinx_spi_conf* priv; } ;
struct fpga_image_info {int config_complete_timeout_us; } ;


 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 scalar_t__ gpiod_get_value (int ) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int ) ;
 int xilinx_spi_apply_cclk_cycles (struct xilinx_spi_conf*) ;

__attribute__((used)) static int xilinx_spi_write_complete(struct fpga_manager *mgr,
         struct fpga_image_info *info)
{
 struct xilinx_spi_conf *conf = mgr->priv;
 unsigned long timeout;
 int ret;

 if (gpiod_get_value(conf->done))
  return xilinx_spi_apply_cclk_cycles(conf);

 timeout = jiffies + usecs_to_jiffies(info->config_complete_timeout_us);

 while (time_before(jiffies, timeout)) {

  ret = xilinx_spi_apply_cclk_cycles(conf);
  if (ret)
   return ret;

  if (gpiod_get_value(conf->done))
   return xilinx_spi_apply_cclk_cycles(conf);
 }

 dev_err(&mgr->dev, "Timeout after config data transfer.\n");
 return -ETIMEDOUT;
}
