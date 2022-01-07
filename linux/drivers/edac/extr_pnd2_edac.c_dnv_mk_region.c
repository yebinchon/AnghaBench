
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region {int dummy; } ;
struct b_cr_asym_mem_region_denverton {int slice_asym_limit; int slice_asym_base; } ;


 scalar_t__ DNV_ASYMSHIFT ;
 scalar_t__ GENMASK_ULL (scalar_t__,int ) ;
 scalar_t__ U64_LSHIFT (int ,scalar_t__) ;
 int mk_region (char*,struct region*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void dnv_mk_region(char *name, struct region *rp, void *asym)
{
 struct b_cr_asym_mem_region_denverton *a = asym;

 mk_region(name, rp,
     U64_LSHIFT(a->slice_asym_base, DNV_ASYMSHIFT),
     U64_LSHIFT(a->slice_asym_limit, DNV_ASYMSHIFT) +
     GENMASK_ULL(DNV_ASYMSHIFT - 1, 0));
}
