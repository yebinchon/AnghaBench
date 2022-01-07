
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chip {int dummy; } ;


 int do_dma_remove (struct dw_dma_chip*) ;

int idma32_dma_remove(struct dw_dma_chip *chip)
{
 return do_dma_remove(chip);
}
