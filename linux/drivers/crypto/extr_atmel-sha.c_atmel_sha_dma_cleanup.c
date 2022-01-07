
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct atmel_sha_dev {TYPE_1__ dma_lch_in; } ;


 int dma_release_channel (int ) ;

__attribute__((used)) static void atmel_sha_dma_cleanup(struct atmel_sha_dev *dd)
{
 dma_release_channel(dd->dma_lch_in.chan);
}
