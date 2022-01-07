
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice40_fpga_priv {int dev; } ;
struct fpga_manager {struct ice40_fpga_priv* priv; } ;


 int spi_write (int ,char const*,size_t) ;

__attribute__((used)) static int ice40_fpga_ops_write(struct fpga_manager *mgr,
    const char *buf, size_t count)
{
 struct ice40_fpga_priv *priv = mgr->priv;

 return spi_write(priv->dev, buf, count);
}
