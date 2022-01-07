
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __qcom_scm_pas_init_image (int ,int ,int ) ;
 TYPE_1__* __scm ;
 int dev_err (int ,char*) ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,void*,int ) ;
 int memcpy (void*,void const*,size_t) ;
 int qcom_scm_clk_disable () ;
 int qcom_scm_clk_enable () ;

int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size)
{
 dma_addr_t mdata_phys;
 void *mdata_buf;
 int ret;






 mdata_buf = dma_alloc_coherent(__scm->dev, size, &mdata_phys,
           GFP_KERNEL);
 if (!mdata_buf) {
  dev_err(__scm->dev, "Allocation of metadata buffer failed.\n");
  return -ENOMEM;
 }
 memcpy(mdata_buf, metadata, size);

 ret = qcom_scm_clk_enable();
 if (ret)
  goto free_metadata;

 ret = __qcom_scm_pas_init_image(__scm->dev, peripheral, mdata_phys);

 qcom_scm_clk_disable();

free_metadata:
 dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);

 return ret;
}
