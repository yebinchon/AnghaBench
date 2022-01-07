
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_mipi_tx {int regs; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void mtk_mipi_tx_set_bits(struct mtk_mipi_tx *mipi_tx, u32 offset,
     u32 bits)
{
 u32 temp = readl(mipi_tx->regs + offset);

 writel(temp | bits, mipi_tx->regs + offset);
}
