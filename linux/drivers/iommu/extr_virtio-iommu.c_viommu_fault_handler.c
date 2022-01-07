
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct virtio_iommu_fault {int reason; int address; int endpoint; int flags; } ;
struct viommu_dev {int dev; } ;


 int VIRTIO_IOMMU_FAULT_F_ADDRESS ;
 int VIRTIO_IOMMU_FAULT_F_EXEC ;
 int VIRTIO_IOMMU_FAULT_F_READ ;
 int VIRTIO_IOMMU_FAULT_F_WRITE ;



 int dev_err_ratelimited (int ,char*,char*,int,...) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int viommu_fault_handler(struct viommu_dev *viommu,
    struct virtio_iommu_fault *fault)
{
 char *reason_str;

 u8 reason = fault->reason;
 u32 flags = le32_to_cpu(fault->flags);
 u32 endpoint = le32_to_cpu(fault->endpoint);
 u64 address = le64_to_cpu(fault->address);

 switch (reason) {
 case 130:
  reason_str = "domain";
  break;
 case 129:
  reason_str = "page";
  break;
 case 128:
 default:
  reason_str = "unknown";
  break;
 }


 if (flags & VIRTIO_IOMMU_FAULT_F_ADDRESS)
  dev_err_ratelimited(viommu->dev, "%s fault from EP %u at %#llx [%s%s%s]\n",
        reason_str, endpoint, address,
        flags & VIRTIO_IOMMU_FAULT_F_READ ? "R" : "",
        flags & VIRTIO_IOMMU_FAULT_F_WRITE ? "W" : "",
        flags & VIRTIO_IOMMU_FAULT_F_EXEC ? "X" : "");
 else
  dev_err_ratelimited(viommu->dev, "%s fault from EP %u\n",
        reason_str, endpoint);
 return 0;
}
