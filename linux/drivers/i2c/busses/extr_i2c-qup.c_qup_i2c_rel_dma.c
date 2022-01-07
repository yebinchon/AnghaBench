
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dma; } ;
struct TYPE_3__ {int * dma; } ;
struct qup_i2c_dev {TYPE_2__ brx; TYPE_1__ btx; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void qup_i2c_rel_dma(struct qup_i2c_dev *qup)
{
 if (qup->btx.dma)
  dma_release_channel(qup->btx.dma);
 if (qup->brx.dma)
  dma_release_channel(qup->brx.dma);
 qup->btx.dma = ((void*)0);
 qup->brx.dma = ((void*)0);
}
