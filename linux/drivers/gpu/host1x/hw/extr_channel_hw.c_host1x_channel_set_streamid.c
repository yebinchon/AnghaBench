
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iommu_fwspec {int* ids; } ;
struct host1x_channel {TYPE_1__* dev; } ;
struct TYPE_2__ {int parent; } ;


 int HOST1X_CHANNEL_SMMU_STREAMID ;
 struct iommu_fwspec* dev_iommu_fwspec_get (int ) ;
 int host1x_ch_writel (struct host1x_channel*,int,int ) ;

__attribute__((used)) static void host1x_channel_set_streamid(struct host1x_channel *channel)
{
}
