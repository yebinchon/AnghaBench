
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int chan; } ;
struct atmel_tdes_dev {TYPE_2__ dma_lch_out; TYPE_1__ dma_lch_in; } ;


 int dma_release_channel (int ) ;

__attribute__((used)) static void atmel_tdes_dma_cleanup(struct atmel_tdes_dev *dd)
{
 dma_release_channel(dd->dma_lch_in.chan);
 dma_release_channel(dd->dma_lch_out.chan);
}
