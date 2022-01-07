
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_dma_dev {scalar_t__ ctrl_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void jz4780_dma_ctrl_writel(struct jz4780_dma_dev *jzdma,
 unsigned int reg, uint32_t val)
{
 writel(val, jzdma->ctrl_base + reg);
}
