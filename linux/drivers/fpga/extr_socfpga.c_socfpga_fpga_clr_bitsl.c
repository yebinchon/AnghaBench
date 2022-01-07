
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;


 int socfpga_fpga_readl (struct socfpga_fpga_priv*,int ) ;
 int socfpga_fpga_writel (struct socfpga_fpga_priv*,int ,int ) ;

__attribute__((used)) static inline void socfpga_fpga_clr_bitsl(struct socfpga_fpga_priv *priv,
       u32 offset, u32 bits)
{
 u32 val;

 val = socfpga_fpga_readl(priv, offset);
 val &= ~bits;
 socfpga_fpga_writel(priv, offset, val);
}
