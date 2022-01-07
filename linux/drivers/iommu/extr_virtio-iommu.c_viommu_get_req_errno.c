
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_iommu_req_tail {int status; } ;


 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int ERANGE ;
__attribute__((used)) static int viommu_get_req_errno(void *buf, size_t len)
{
 struct virtio_iommu_req_tail *tail = buf + len - sizeof(*tail);

 switch (tail->status) {
 case 130:
  return 0;
 case 128:
  return -ENOSYS;
 case 134:
  return -EINVAL;
 case 129:
  return -ERANGE;
 case 132:
  return -ENOENT;
 case 135:
  return -EFAULT;
 case 131:
  return -ENOMEM;
 case 133:
 case 136:
 default:
  return -EIO;
 }
}
