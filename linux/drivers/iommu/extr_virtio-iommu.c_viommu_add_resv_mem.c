
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtio_iommu_probe_resv_mem {int subtype; int end; int start; } ;
struct viommu_endpoint {int resv_regions; int dev; } ;
struct iommu_resv_region {int list; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int EOVERFLOW ;
 unsigned long IOMMU_MMIO ;
 unsigned long IOMMU_NOEXEC ;
 int IOMMU_RESV_MSI ;
 int IOMMU_RESV_RESERVED ;
 unsigned long IOMMU_WRITE ;


 int dev_warn (int ,char*,int) ;
 struct iommu_resv_region* iommu_alloc_resv_region (int,size_t,unsigned long,int ) ;
 int le64_to_cpu (int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int viommu_add_resv_mem(struct viommu_endpoint *vdev,
          struct virtio_iommu_probe_resv_mem *mem,
          size_t len)
{
 size_t size;
 u64 start64, end64;
 phys_addr_t start, end;
 struct iommu_resv_region *region = ((void*)0);
 unsigned long prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;

 start = start64 = le64_to_cpu(mem->start);
 end = end64 = le64_to_cpu(mem->end);
 size = end64 - start64 + 1;


 if (start != start64 || end != end64 || size < end64 - start64)
  return -EOVERFLOW;

 if (len < sizeof(*mem))
  return -EINVAL;

 switch (mem->subtype) {
 default:
  dev_warn(vdev->dev, "unknown resv mem subtype 0x%x\n",
    mem->subtype);

 case 128:
  region = iommu_alloc_resv_region(start, size, 0,
       IOMMU_RESV_RESERVED);
  break;
 case 129:
  region = iommu_alloc_resv_region(start, size, prot,
       IOMMU_RESV_MSI);
  break;
 }
 if (!region)
  return -ENOMEM;

 list_add(&vdev->resv_regions, &region->list);
 return 0;
}
