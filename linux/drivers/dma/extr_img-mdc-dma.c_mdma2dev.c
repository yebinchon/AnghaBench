
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* dev; } ;
struct mdc_dma {TYPE_1__ dma_dev; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline struct device *mdma2dev(struct mdc_dma *mdma)
{
 return mdma->dma_dev.dev;
}
