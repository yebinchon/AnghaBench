
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qcom_iommu_ctx {unsigned int base; } ;


 int writeq_relaxed (int ,unsigned int) ;

__attribute__((used)) static inline void
iommu_writeq(struct qcom_iommu_ctx *ctx, unsigned reg, u64 val)
{
 writeq_relaxed(val, ctx->base + reg);
}
