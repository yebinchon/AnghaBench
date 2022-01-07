
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dsi {int irq_data; } ;



__attribute__((used)) static void mtk_dsi_irq_data_set(struct mtk_dsi *dsi, u32 irq_bit)
{
 dsi->irq_data |= irq_bit;
}
