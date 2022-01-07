
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;
struct fpga_manager {struct socfpga_fpga_priv* priv; } ;


 int EFAULT ;
 int EINVAL ;
 int socfpga_fpga_data_writel (struct socfpga_fpga_priv*,int) ;

__attribute__((used)) static int socfpga_fpga_ops_configure_write(struct fpga_manager *mgr,
         const char *buf, size_t count)
{
 struct socfpga_fpga_priv *priv = mgr->priv;
 u32 *buffer_32 = (u32 *)buf;
 size_t i = 0;

 if (count <= 0)
  return -EINVAL;


 while (count >= sizeof(u32)) {
  socfpga_fpga_data_writel(priv, buffer_32[i++]);
  count -= sizeof(u32);
 }


 switch (count) {
 case 3:
  socfpga_fpga_data_writel(priv, buffer_32[i++] & 0x00ffffff);
  break;
 case 2:
  socfpga_fpga_data_writel(priv, buffer_32[i++] & 0x0000ffff);
  break;
 case 1:
  socfpga_fpga_data_writel(priv, buffer_32[i++] & 0x000000ff);
  break;
 case 0:
  break;
 default:

  return -EFAULT;
 }

 return 0;
}
