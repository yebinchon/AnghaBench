
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4780_dma_dev {scalar_t__ ctrl_base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t jz4780_dma_ctrl_readl(struct jz4780_dma_dev *jzdma,
 unsigned int reg)
{
 return readl(jzdma->ctrl_base + reg);
}
