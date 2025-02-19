
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_iommu_req_tail {int dummy; } ;
struct virtio_iommu_req_head {scalar_t__ type; } ;
struct viommu_dev {size_t probe_size; } ;
typedef size_t off_t ;


 scalar_t__ VIRTIO_IOMMU_T_PROBE ;

__attribute__((used)) static off_t viommu_get_write_desc_offset(struct viommu_dev *viommu,
       struct virtio_iommu_req_head *req,
       size_t len)
{
 size_t tail_size = sizeof(struct virtio_iommu_req_tail);

 if (req->type == VIRTIO_IOMMU_T_PROBE)
  return len - viommu->probe_size - tail_size;

 return len - tail_size;
}
