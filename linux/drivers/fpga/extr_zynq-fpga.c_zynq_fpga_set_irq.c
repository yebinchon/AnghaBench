
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_fpga_priv {int dummy; } ;


 int INT_MASK_OFFSET ;
 int zynq_fpga_write (struct zynq_fpga_priv*,int ,int ) ;

__attribute__((used)) static inline void zynq_fpga_set_irq(struct zynq_fpga_priv *priv, u32 enable)
{
 zynq_fpga_write(priv, INT_MASK_OFFSET, ~enable);
}
