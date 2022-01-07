
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts73xx_fpga_priv {scalar_t__ io_base; } ;
struct fpga_manager {struct ts73xx_fpga_priv* priv; } ;
struct fpga_image_info {int dummy; } ;


 scalar_t__ TS73XX_FPGA_CONFIG_REG ;
 int TS73XX_FPGA_RESET ;
 int TS73XX_FPGA_RESET_HIGH_DELAY ;
 int TS73XX_FPGA_RESET_LOW_DELAY ;
 int udelay (int ) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int ts73xx_fpga_write_init(struct fpga_manager *mgr,
      struct fpga_image_info *info,
      const char *buf, size_t count)
{
 struct ts73xx_fpga_priv *priv = mgr->priv;


 writeb(0, priv->io_base + TS73XX_FPGA_CONFIG_REG);
 udelay(TS73XX_FPGA_RESET_LOW_DELAY);
 writeb(TS73XX_FPGA_RESET, priv->io_base + TS73XX_FPGA_CONFIG_REG);
 udelay(TS73XX_FPGA_RESET_HIGH_DELAY);

 return 0;
}
