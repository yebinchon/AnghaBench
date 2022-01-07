
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fpga_manager {struct a10_fpga_priv* priv; } ;
struct a10_fpga_priv {int fpga_data_addr; } ;


 int EFAULT ;
 int EINVAL ;
 int writel (int,int ) ;

__attribute__((used)) static int socfpga_a10_fpga_write(struct fpga_manager *mgr, const char *buf,
      size_t count)
{
 struct a10_fpga_priv *priv = mgr->priv;
 u32 *buffer_32 = (u32 *)buf;
 size_t i = 0;

 if (count <= 0)
  return -EINVAL;


 while (count >= sizeof(u32)) {
  writel(buffer_32[i++], priv->fpga_data_addr);
  count -= sizeof(u32);
 }


 switch (count) {
 case 3:
  writel(buffer_32[i++] & 0x00ffffff, priv->fpga_data_addr);
  break;
 case 2:
  writel(buffer_32[i++] & 0x0000ffff, priv->fpga_data_addr);
  break;
 case 1:
  writel(buffer_32[i++] & 0x000000ff, priv->fpga_data_addr);
  break;
 case 0:
  break;
 default:

  return -EFAULT;
 }

 return 0;
}
