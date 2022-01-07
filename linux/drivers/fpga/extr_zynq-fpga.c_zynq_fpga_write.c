
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zynq_fpga_priv {scalar_t__ io_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void zynq_fpga_write(struct zynq_fpga_priv *priv, u32 offset,
       u32 val)
{
 writel(val, priv->io_base + offset);
}
