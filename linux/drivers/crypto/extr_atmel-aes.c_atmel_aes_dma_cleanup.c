
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int chan; } ;
struct atmel_aes_dev {TYPE_2__ src; TYPE_1__ dst; } ;


 int dma_release_channel (int ) ;

__attribute__((used)) static void atmel_aes_dma_cleanup(struct atmel_aes_dev *dd)
{
 dma_release_channel(dd->dst.chan);
 dma_release_channel(dd->src.chan);
}
