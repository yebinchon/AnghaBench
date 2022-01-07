
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int BIT_ULL (int) ;
 int I2C_DMA_4G_MODE ;
 int I2C_DMA_CLR_FLAG ;

__attribute__((used)) static inline u32 mtk_i2c_set_4g_mode(dma_addr_t addr)
{
 return (addr & BIT_ULL(32)) ? I2C_DMA_4G_MODE : I2C_DMA_CLR_FLAG;
}
