
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommu_context {int dummy; } ;
struct etnaviv_gpu {int sec_mode; } ;




 int WARN (int,char*) ;
 int etnaviv_iommuv2_restore_nonsec (struct etnaviv_gpu*,struct etnaviv_iommu_context*) ;
 int etnaviv_iommuv2_restore_sec (struct etnaviv_gpu*,struct etnaviv_iommu_context*) ;

__attribute__((used)) static void etnaviv_iommuv2_restore(struct etnaviv_gpu *gpu,
        struct etnaviv_iommu_context *context)
{
 switch (gpu->sec_mode) {
 case 128:
  etnaviv_iommuv2_restore_nonsec(gpu, context);
  break;
 case 129:
  etnaviv_iommuv2_restore_sec(gpu, context);
  break;
 default:
  WARN(1, "unhandled GPU security mode\n");
  break;
 }
}
