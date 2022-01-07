
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int max_n_shift; } ;
struct TYPE_3__ {TYPE_2__ llq; } ;
struct arm_smmu_cmdq {int * valid_map; int lock; int owner_prod; TYPE_1__ q; } ;
struct arm_smmu_device {int dev; struct arm_smmu_cmdq cmdq; } ;
typedef int atomic_long_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int arm_smmu_cmdq_free_bitmap ;
 int atomic_set (int *,int ) ;
 scalar_t__ bitmap_zalloc (unsigned int,int ) ;
 int dev_err (int ,char*) ;
 int devm_add_action (int ,int ,int *) ;

__attribute__((used)) static int arm_smmu_cmdq_init(struct arm_smmu_device *smmu)
{
 int ret = 0;
 struct arm_smmu_cmdq *cmdq = &smmu->cmdq;
 unsigned int nents = 1 << cmdq->q.llq.max_n_shift;
 atomic_long_t *bitmap;

 atomic_set(&cmdq->owner_prod, 0);
 atomic_set(&cmdq->lock, 0);

 bitmap = (atomic_long_t *)bitmap_zalloc(nents, GFP_KERNEL);
 if (!bitmap) {
  dev_err(smmu->dev, "failed to allocate cmdq bitmap\n");
  ret = -ENOMEM;
 } else {
  cmdq->valid_map = bitmap;
  devm_add_action(smmu->dev, arm_smmu_cmdq_free_bitmap, bitmap);
 }

 return ret;
}
