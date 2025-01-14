
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_n_shift; scalar_t__ cons; scalar_t__ prod; } ;
struct arm_smmu_queue {size_t base_dma; size_t ent_dwords; int q_base; TYPE_1__ llq; void* cons_reg; void* prod_reg; scalar_t__ base; } ;
struct arm_smmu_device {int dev; } ;


 int ENOMEM ;
 int FIELD_PREP (int ,int) ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int Q_BASE_ADDR_MASK ;
 int Q_BASE_LOG2SIZE ;
 int Q_BASE_RWA ;
 int WARN_ON (size_t) ;
 void* arm_smmu_page1_fixup (unsigned long,struct arm_smmu_device*) ;
 int dev_err (int ,char*,size_t,char const*) ;
 int dev_info (int ,char*,int,char const*) ;
 scalar_t__ dmam_alloc_coherent (int ,size_t,size_t*,int ) ;

__attribute__((used)) static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
       struct arm_smmu_queue *q,
       unsigned long prod_off,
       unsigned long cons_off,
       size_t dwords, const char *name)
{
 size_t qsz;

 do {
  qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
  q->base = dmam_alloc_coherent(smmu->dev, qsz, &q->base_dma,
           GFP_KERNEL);
  if (q->base || qsz < PAGE_SIZE)
   break;

  q->llq.max_n_shift--;
 } while (1);

 if (!q->base) {
  dev_err(smmu->dev,
   "failed to allocate queue (0x%zx bytes) for %s\n",
   qsz, name);
  return -ENOMEM;
 }

 if (!WARN_ON(q->base_dma & (qsz - 1))) {
  dev_info(smmu->dev, "allocated %u entries for %s\n",
    1 << q->llq.max_n_shift, name);
 }

 q->prod_reg = arm_smmu_page1_fixup(prod_off, smmu);
 q->cons_reg = arm_smmu_page1_fixup(cons_off, smmu);
 q->ent_dwords = dwords;

 q->q_base = Q_BASE_RWA;
 q->q_base |= q->base_dma & Q_BASE_ADDR_MASK;
 q->q_base |= FIELD_PREP(Q_BASE_LOG2SIZE, q->llq.max_n_shift);

 q->llq.prod = q->llq.cons = 0;
 return 0;
}
