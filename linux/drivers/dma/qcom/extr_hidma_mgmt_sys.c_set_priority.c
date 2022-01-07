
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct hidma_mgmt_dev {unsigned int dma_channels; void** priority; } ;


 int EINVAL ;
 int hidma_mgmt_setup (struct hidma_mgmt_dev*) ;

__attribute__((used)) static int set_priority(struct hidma_mgmt_dev *mdev, unsigned int i, u64 val)
{
 u64 tmp;
 int rc;

 if (i >= mdev->dma_channels)
  return -EINVAL;

 tmp = mdev->priority[i];
 mdev->priority[i] = val;
 rc = hidma_mgmt_setup(mdev);
 if (rc)
  mdev->priority[i] = tmp;
 return rc;
}
