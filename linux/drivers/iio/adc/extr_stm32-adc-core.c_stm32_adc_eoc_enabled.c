
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {unsigned int base; } ;
struct stm32_adc_priv {TYPE_3__* cfg; TYPE_1__ common; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {unsigned int ier; unsigned int eocie_msk; } ;


 unsigned int readl_relaxed (unsigned int) ;
 unsigned int* stm32_adc_offset ;

__attribute__((used)) static unsigned int stm32_adc_eoc_enabled(struct stm32_adc_priv *priv,
       unsigned int adc)
{
 u32 ier, offset = stm32_adc_offset[adc];

 ier = readl_relaxed(priv->common.base + offset + priv->cfg->regs->ier);

 return ier & priv->cfg->regs->eocie_msk;
}
