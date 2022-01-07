
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int fpga_data_addr; } ;


 int writel (int ,int ) ;

__attribute__((used)) static void socfpga_fpga_data_writel(struct socfpga_fpga_priv *priv, u32 value)
{
 writel(value, priv->fpga_data_addr);
}
