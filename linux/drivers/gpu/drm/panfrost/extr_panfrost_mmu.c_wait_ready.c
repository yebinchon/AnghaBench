
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct panfrost_device {int dev; scalar_t__ iomem; } ;


 scalar_t__ AS_STATUS (int) ;
 int AS_STATUS_AS_ACTIVE ;
 int dev_err (int ,char*) ;
 int readl_relaxed_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int wait_ready(struct panfrost_device *pfdev, u32 as_nr)
{
 int ret;
 u32 val;



 ret = readl_relaxed_poll_timeout_atomic(pfdev->iomem + AS_STATUS(as_nr),
  val, !(val & AS_STATUS_AS_ACTIVE), 10, 1000);

 if (ret)
  dev_err(pfdev->dev, "AS_ACTIVE bit stuck\n");

 return ret;
}
