
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zynq_fpga_priv {scalar_t__ io_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 zynq_fpga_read(const struct zynq_fpga_priv *priv,
     u32 offset)
{
 return readl(priv->io_base + offset);
}
