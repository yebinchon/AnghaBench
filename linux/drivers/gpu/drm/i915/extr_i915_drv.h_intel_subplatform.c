
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_runtime_info {int* platform_mask; } ;
typedef enum intel_platform { ____Placeholder_intel_platform } intel_platform ;


 int INTEL_SUBPLATFORM_BITS ;
 unsigned int __platform_mask_index (struct intel_runtime_info const*,int) ;

__attribute__((used)) static inline u32
intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
{
 const unsigned int pi = __platform_mask_index(info, p);

 return info->platform_mask[pi] & INTEL_SUBPLATFORM_BITS;
}
