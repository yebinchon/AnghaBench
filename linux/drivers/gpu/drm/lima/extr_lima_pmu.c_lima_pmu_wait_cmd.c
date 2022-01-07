
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ip {scalar_t__ iomem; struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 int LIMA_PMU_INT_CLEAR ;
 int LIMA_PMU_INT_CMD_MASK ;
 scalar_t__ LIMA_PMU_INT_RAWSTAT ;
 int dev_err (int ,char*) ;
 int pmu_write (int ,int) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int lima_pmu_wait_cmd(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;
 u32 v;

 err = readl_poll_timeout(ip->iomem + LIMA_PMU_INT_RAWSTAT,
     v, v & LIMA_PMU_INT_CMD_MASK,
     100, 100000);
 if (err) {
  dev_err(dev->dev, "timeout wait pmd cmd\n");
  return err;
 }

 pmu_write(LIMA_PMU_INT_CLEAR, LIMA_PMU_INT_CMD_MASK);
 return 0;
}
