
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_fpga_priv {int flags; } ;
struct fpga_manager {struct zynqmp_fpga_priv* priv; } ;
struct fpga_image_info {int flags; } ;



__attribute__((used)) static int zynqmp_fpga_ops_write_init(struct fpga_manager *mgr,
          struct fpga_image_info *info,
          const char *buf, size_t size)
{
 struct zynqmp_fpga_priv *priv;

 priv = mgr->priv;
 priv->flags = info->flags;

 return 0;
}
