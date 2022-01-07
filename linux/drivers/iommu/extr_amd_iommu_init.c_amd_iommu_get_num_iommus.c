
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd_iommus_present ;

int amd_iommu_get_num_iommus(void)
{
 return amd_iommus_present;
}
