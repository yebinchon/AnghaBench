
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct socfpga_fpga_priv {scalar_t__ fpga_base_addr; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 socfpga_fpga_readl(struct socfpga_fpga_priv *priv, u32 reg_offset)
{
 return readl(priv->fpga_base_addr + reg_offset);
}
