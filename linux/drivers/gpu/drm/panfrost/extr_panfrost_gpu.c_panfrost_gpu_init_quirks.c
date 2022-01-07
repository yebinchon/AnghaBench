
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision; int coherency_features; } ;
struct panfrost_device {TYPE_1__ features; } ;


 int COHERENCY_ACE ;
 int COHERENCY_ACE_LITE ;
 int GPUCORE_1619 ;
 int GPU_JM_CONFIG ;
 int GPU_L2_MMU_CONFIG ;
 int GPU_SHADER_CONFIG ;
 int GPU_TILER_CONFIG ;
 int HW_FEATURE_3BIT_EXT_RW_L2_MMU_CONFIG ;
 int HW_FEATURE_TLS_HASHING ;
 int HW_ISSUE_10327 ;
 int HW_ISSUE_10797 ;
 int HW_ISSUE_11035 ;
 int HW_ISSUE_8443 ;
 int HW_ISSUE_T76X_3953 ;
 int JM_FORCE_COHERENCY_FEATURES_SHIFT ;
 int JM_JOB_THROTTLE_LIMIT_SHIFT ;
 int JM_MAX_JOB_THROTTLE_LIMIT ;
 int L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_READS ;
 int L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_WRITES ;
 int L2_MMU_CONFIG_LIMIT_EXTERNAL_READS ;
 int L2_MMU_CONFIG_LIMIT_EXTERNAL_WRITES ;
 int SC_ENABLE_TEXGRD_FLAGS ;
 int SC_LS_ALLOW_ATTR_TYPES ;
 int SC_LS_ATTR_CHECK_DISABLE ;
 int SC_LS_PAUSEBUFFER_DISABLE ;
 int SC_SDC_DISABLE_OQ_DISCARD ;
 int SC_TLS_HASH_ENABLE ;
 int TC_CLOCK_GATE_OVERRIDE ;
 int gpu_read (struct panfrost_device*,int ) ;
 int gpu_write (struct panfrost_device*,int ,int) ;
 scalar_t__ panfrost_has_hw_feature (struct panfrost_device*,int ) ;
 scalar_t__ panfrost_has_hw_issue (struct panfrost_device*,int ) ;
 scalar_t__ panfrost_model_cmp (struct panfrost_device*,int) ;
 scalar_t__ panfrost_model_eq (struct panfrost_device*,int) ;

__attribute__((used)) static void panfrost_gpu_init_quirks(struct panfrost_device *pfdev)
{
 u32 quirks = 0;

 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_8443) ||
     panfrost_has_hw_issue(pfdev, HW_ISSUE_11035))
  quirks |= SC_LS_PAUSEBUFFER_DISABLE;

 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_10327))
  quirks |= SC_SDC_DISABLE_OQ_DISCARD;

 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_10797))
  quirks |= SC_ENABLE_TEXGRD_FLAGS;

 if (!panfrost_has_hw_issue(pfdev, GPUCORE_1619)) {
  if (panfrost_model_cmp(pfdev, 0x750) < 0)
   quirks |= SC_LS_ATTR_CHECK_DISABLE;
  else if (panfrost_model_cmp(pfdev, 0x880) <= 0)
   quirks |= SC_LS_ALLOW_ATTR_TYPES;
 }

 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_TLS_HASHING))
  quirks |= SC_TLS_HASH_ENABLE;

 if (quirks)
  gpu_write(pfdev, GPU_SHADER_CONFIG, quirks);


 quirks = gpu_read(pfdev, GPU_TILER_CONFIG);


 if (panfrost_has_hw_issue(pfdev, HW_ISSUE_T76X_3953))
  quirks |= TC_CLOCK_GATE_OVERRIDE;

 gpu_write(pfdev, GPU_TILER_CONFIG, quirks);


 quirks = gpu_read(pfdev, GPU_L2_MMU_CONFIG);


 if (panfrost_has_hw_feature(pfdev, HW_FEATURE_3BIT_EXT_RW_L2_MMU_CONFIG))
  quirks &= ~(L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_READS |
       L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_WRITES);
 else
  quirks &= ~(L2_MMU_CONFIG_LIMIT_EXTERNAL_READS |
       L2_MMU_CONFIG_LIMIT_EXTERNAL_WRITES);

 gpu_write(pfdev, GPU_L2_MMU_CONFIG, quirks);

 quirks = 0;
 if ((panfrost_model_eq(pfdev, 0x860) || panfrost_model_eq(pfdev, 0x880)) &&
     pfdev->features.revision >= 0x2000)
  quirks |= JM_MAX_JOB_THROTTLE_LIMIT << JM_JOB_THROTTLE_LIMIT_SHIFT;
 else if (panfrost_model_eq(pfdev, 0x6000) &&
   pfdev->features.coherency_features == COHERENCY_ACE)
  quirks |= (COHERENCY_ACE_LITE | COHERENCY_ACE) <<
      JM_FORCE_COHERENCY_FEATURES_SHIFT;

 if (quirks)
  gpu_write(pfdev, GPU_JM_CONFIG, quirks);
}
