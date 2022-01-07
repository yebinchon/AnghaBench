
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_dma_chan {int dummy; } ;
struct mbus_device {int dummy; } ;
struct TYPE_2__ {struct mbus_device* mbdev; } ;


 TYPE_1__* to_mic_dma_dev (struct mic_dma_chan*) ;

__attribute__((used)) static inline struct mbus_device *to_mbus_device(struct mic_dma_chan *ch)
{
 return to_mic_dma_dev(ch)->mbdev;
}
