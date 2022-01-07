
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ GVT_OPREGION_FUNC (scalar_t__) ;
 scalar_t__ GVT_OPREGION_SUBFUNC (scalar_t__) ;
 scalar_t__ INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS ;
 scalar_t__ INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA ;
 scalar_t__ INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS ;
 scalar_t__ INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS ;

__attribute__((used)) static bool querying_capabilities(u32 scic)
{
 u32 func, subfunc;

 func = GVT_OPREGION_FUNC(scic);
 subfunc = GVT_OPREGION_SUBFUNC(scic);

 if ((func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA &&
  subfunc == INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS)
  || (func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA &&
   subfunc == INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS)
  || (func == INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS &&
   subfunc == INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS)) {
  return 1;
 }
 return 0;
}
