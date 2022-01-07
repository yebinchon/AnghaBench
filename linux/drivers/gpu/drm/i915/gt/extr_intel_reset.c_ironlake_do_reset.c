
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;
typedef int intel_engine_mask_t ;


 int DRM_DEBUG_DRIVER (char*) ;
 int ILK_GDSR ;
 int ILK_GRDOM_MEDIA ;
 int ILK_GRDOM_RENDER ;
 int ILK_GRDOM_RESET_ENABLE ;
 int __intel_wait_for_register_fw (struct intel_uncore*,int ,int,int ,int,int ,int *) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;

__attribute__((used)) static int ironlake_do_reset(struct intel_gt *gt,
        intel_engine_mask_t engine_mask,
        unsigned int retry)
{
 struct intel_uncore *uncore = gt->uncore;
 int ret;

 intel_uncore_write_fw(uncore, ILK_GDSR,
         ILK_GRDOM_RENDER | ILK_GRDOM_RESET_ENABLE);
 ret = __intel_wait_for_register_fw(uncore, ILK_GDSR,
        ILK_GRDOM_RESET_ENABLE, 0,
        5000, 0,
        ((void*)0));
 if (ret) {
  DRM_DEBUG_DRIVER("Wait for render reset failed\n");
  goto out;
 }

 intel_uncore_write_fw(uncore, ILK_GDSR,
         ILK_GRDOM_MEDIA | ILK_GRDOM_RESET_ENABLE);
 ret = __intel_wait_for_register_fw(uncore, ILK_GDSR,
        ILK_GRDOM_RESET_ENABLE, 0,
        5000, 0,
        ((void*)0));
 if (ret) {
  DRM_DEBUG_DRIVER("Wait for media reset failed\n");
  goto out;
 }

out:
 intel_uncore_write_fw(uncore, ILK_GDSR, 0);
 intel_uncore_posting_read_fw(uncore, ILK_GDSR);
 return ret;
}
