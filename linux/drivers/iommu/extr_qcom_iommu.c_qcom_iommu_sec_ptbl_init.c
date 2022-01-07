
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,size_t) ;
 void* dma_alloc_attrs (struct device*,size_t,int *,int ,unsigned long) ;
 int dma_free_attrs (struct device*,size_t,void*,int ,unsigned long) ;
 int qcom_scm_iommu_secure_ptbl_init (int ,size_t,unsigned int) ;
 int qcom_scm_iommu_secure_ptbl_size (unsigned int,size_t*) ;

__attribute__((used)) static int qcom_iommu_sec_ptbl_init(struct device *dev)
{
 size_t psize = 0;
 unsigned int spare = 0;
 void *cpu_addr;
 dma_addr_t paddr;
 unsigned long attrs;
 static bool allocated = 0;
 int ret;

 if (allocated)
  return 0;

 ret = qcom_scm_iommu_secure_ptbl_size(spare, &psize);
 if (ret) {
  dev_err(dev, "failed to get iommu secure pgtable size (%d)\n",
   ret);
  return ret;
 }

 dev_info(dev, "iommu sec: pgtable size: %zu\n", psize);

 attrs = DMA_ATTR_NO_KERNEL_MAPPING;

 cpu_addr = dma_alloc_attrs(dev, psize, &paddr, GFP_KERNEL, attrs);
 if (!cpu_addr) {
  dev_err(dev, "failed to allocate %zu bytes for pgtable\n",
   psize);
  return -ENOMEM;
 }

 ret = qcom_scm_iommu_secure_ptbl_init(paddr, psize, spare);
 if (ret) {
  dev_err(dev, "failed to init iommu pgtable (%d)\n", ret);
  goto free_mem;
 }

 allocated = 1;
 return 0;

free_mem:
 dma_free_attrs(dev, psize, cpu_addr, paddr, attrs);
 return ret;
}
