
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct txx9dmac_dev {int dummy; } ;
struct TYPE_4__ {int CCR; } ;
struct TYPE_3__ {int CCR; } ;
struct txx9dmac_desc {TYPE_2__ hwdesc32; TYPE_1__ hwdesc; } ;


 int TXX9_DMA_CCR_INTENT ;
 scalar_t__ __is_dmac64 (struct txx9dmac_dev*) ;

__attribute__((used)) static inline void txx9dmac_desc_set_INTENT(struct txx9dmac_dev *ddev,
         struct txx9dmac_desc *desc)
{
 if (__is_dmac64(ddev))
  desc->hwdesc.CCR |= TXX9_DMA_CCR_INTENT;
 else
  desc->hwdesc32.CCR |= TXX9_DMA_CCR_INTENT;
}
