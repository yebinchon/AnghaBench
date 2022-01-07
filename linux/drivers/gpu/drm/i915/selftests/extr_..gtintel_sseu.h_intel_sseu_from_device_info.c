
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sseu_dev_info {int max_eus_per_subslice; int * subslice_mask; int slice_mask; } ;
struct intel_sseu {int max_eus_per_subslice; int min_eus_per_subslice; int subslice_mask; int slice_mask; } ;



__attribute__((used)) static inline struct intel_sseu
intel_sseu_from_device_info(const struct sseu_dev_info *sseu)
{
 struct intel_sseu value = {
  .slice_mask = sseu->slice_mask,
  .subslice_mask = sseu->subslice_mask[0],
  .min_eus_per_subslice = sseu->max_eus_per_subslice,
  .max_eus_per_subslice = sseu->max_eus_per_subslice,
 };

 return value;
}
