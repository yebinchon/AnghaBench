
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_spi_conf {int done; int prog_b; } ;
struct fpga_manager {int dev; struct xilinx_spi_conf* priv; } ;
struct fpga_image_info {int flags; } ;


 int EINVAL ;
 int EIO ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int dev_err (int *,char*) ;
 scalar_t__ gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int udelay (size_t const) ;
 int usleep_range (size_t const,size_t const) ;

__attribute__((used)) static int xilinx_spi_write_init(struct fpga_manager *mgr,
     struct fpga_image_info *info,
     const char *buf, size_t count)
{
 struct xilinx_spi_conf *conf = mgr->priv;
 const size_t prog_latency_7500us = 7500;
 const size_t prog_pulse_1us = 1;

 if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
  dev_err(&mgr->dev, "Partial reconfiguration not supported.\n");
  return -EINVAL;
 }

 gpiod_set_value(conf->prog_b, 1);

 udelay(prog_pulse_1us);

 gpiod_set_value(conf->prog_b, 0);

 if (gpiod_get_value(conf->done)) {
  dev_err(&mgr->dev, "Unexpected DONE pin state...\n");
  return -EIO;
 }


 usleep_range(prog_latency_7500us, prog_latency_7500us + 100);
 return 0;
}
