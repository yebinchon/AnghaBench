
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_iommu_req_tail {int status; } ;



__attribute__((used)) static void viommu_set_req_status(void *buf, size_t len, int status)
{
 struct virtio_iommu_req_tail *tail = buf + len - sizeof(*tail);

 tail->status = status;
}
