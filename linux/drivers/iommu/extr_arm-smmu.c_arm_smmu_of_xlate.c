
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int args_count; int np; int * args; } ;
struct device {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int SMR_ID ;
 int SMR_MASK ;
 int iommu_fwspec_add_ids (struct device*,int *,int) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
{
 u32 mask, fwid = 0;

 if (args->args_count > 0)
  fwid |= FIELD_PREP(SMR_ID, args->args[0]);

 if (args->args_count > 1)
  fwid |= FIELD_PREP(SMR_MASK, args->args[1]);
 else if (!of_property_read_u32(args->np, "stream-match-mask", &mask))
  fwid |= FIELD_PREP(SMR_MASK, mask);

 return iommu_fwspec_add_ids(dev, &fwid, 1);
}
