
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_perfcnt {size_t bosize; int lock; int dump_comp; } ;
struct TYPE_2__ {int mem_features; int shader_present; int l2_present; } ;
struct panfrost_device {struct panfrost_perfcnt* perfcnt; int dev; TYPE_1__ features; } ;


 unsigned int BLOCKS_PER_COREGROUP ;
 unsigned int BYTES_PER_COUNTER ;
 unsigned int COUNTERS_PER_BLOCK ;
 int ENOMEM ;
 int GENMASK (int,int ) ;
 int GFP_KERNEL ;
 int GPU_PERFCNT_CFG ;
 int GPU_PERFCNT_CFG_MODE (int ) ;
 int GPU_PERFCNT_CFG_MODE_OFF ;
 int GPU_PRFCNT_JM_EN ;
 int GPU_PRFCNT_MMU_L2_EN ;
 int GPU_PRFCNT_SHADER_EN ;
 int GPU_PRFCNT_TILER_EN ;
 int HW_FEATURE_V4 ;
 struct panfrost_perfcnt* devm_kzalloc (int ,int,int ) ;
 unsigned int fls64 (int ) ;
 int gpu_write (struct panfrost_device*,int ,int ) ;
 unsigned int hweight64 (int ) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 scalar_t__ panfrost_has_hw_feature (struct panfrost_device*,int ) ;

int panfrost_perfcnt_init(struct panfrost_device *pfdev)
{
 struct panfrost_perfcnt *perfcnt;
 size_t size;

 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_V4)) {
  unsigned int ncoregroups;

  ncoregroups = hweight64(pfdev->features.l2_present);
  size = ncoregroups * BLOCKS_PER_COREGROUP *
         COUNTERS_PER_BLOCK * BYTES_PER_COUNTER;
 } else {
  unsigned int nl2c, ncores;





  nl2c = ((pfdev->features.mem_features >> 8) & GENMASK(3, 0)) + 1;






  ncores = fls64(pfdev->features.shader_present);





  size = (nl2c + ncores + 2) *
         COUNTERS_PER_BLOCK * BYTES_PER_COUNTER;
 }

 perfcnt = devm_kzalloc(pfdev->dev, sizeof(*perfcnt), GFP_KERNEL);
 if (!perfcnt)
  return -ENOMEM;

 perfcnt->bosize = size;


 gpu_write(pfdev, GPU_PERFCNT_CFG,
    GPU_PERFCNT_CFG_MODE(GPU_PERFCNT_CFG_MODE_OFF));
 gpu_write(pfdev, GPU_PRFCNT_JM_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_SHADER_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_MMU_L2_EN, 0);
 gpu_write(pfdev, GPU_PRFCNT_TILER_EN, 0);

 init_completion(&perfcnt->dump_comp);
 mutex_init(&perfcnt->lock);
 pfdev->perfcnt = perfcnt;

 return 0;
}
