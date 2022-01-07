
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_acc_sgl_pool {int sgl_dma; int sgl; int size; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int memset (struct hisi_acc_sgl_pool*,int ,int) ;

void hisi_acc_free_sgl_pool(struct device *dev, struct hisi_acc_sgl_pool *pool)
{
 dma_free_coherent(dev, pool->size, pool->sgl, pool->sgl_dma);
 memset(pool, 0, sizeof(struct hisi_acc_sgl_pool));
}
