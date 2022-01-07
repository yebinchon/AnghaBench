
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qcom_iommu_ctx {unsigned int base; } ;


 int readq_relaxed (unsigned int) ;

__attribute__((used)) static inline u64
iommu_readq(struct qcom_iommu_ctx *ctx, unsigned reg)
{
 return readq_relaxed(ctx->base + reg);
}
