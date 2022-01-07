
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef int USHORT ;
typedef int PP_StateClassificationFlags ;


 int ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2 ;
 int ATOM_PPLIB_CLASSIFICATION2_MVC ;
 int ATOM_PPLIB_CLASSIFICATION2_ULV ;
 int ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE ;
 int ATOM_PPLIB_CLASSIFICATION_ACPI ;
 int ATOM_PPLIB_CLASSIFICATION_BOOT ;
 int ATOM_PPLIB_CLASSIFICATION_FORCED ;
 int ATOM_PPLIB_CLASSIFICATION_HD2STATE ;
 int ATOM_PPLIB_CLASSIFICATION_HDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE ;
 int ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE ;
 int ATOM_PPLIB_CLASSIFICATION_REST ;
 int ATOM_PPLIB_CLASSIFICATION_SDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_THERMAL ;
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ;
 int PP_StateClassificationFlag_3DPerformance ;
 int PP_StateClassificationFlag_ACOverdriveTemplate ;
 int PP_StateClassificationFlag_ACPI ;
 int PP_StateClassificationFlag_Boot ;
 int PP_StateClassificationFlag_Forced ;
 int PP_StateClassificationFlag_HD2 ;
 int PP_StateClassificationFlag_LimitedPowerSource ;
 int PP_StateClassificationFlag_LimitedPowerSource_2 ;
 int PP_StateClassificationFlag_Rest ;
 int PP_StateClassificationFlag_Thermal ;
 int PP_StateClassificationFlag_ULV ;
 int PP_StateClassificationFlag_Uvd ;
 int PP_StateClassificationFlag_UvdHD ;
 int PP_StateClassificationFlag_UvdMVC ;
 int PP_StateClassificationFlag_UvdSD ;

__attribute__((used)) static PP_StateClassificationFlags make_classification_flags(
         struct pp_hwmgr *hwmgr,
          USHORT classification,
         USHORT classification2)
{
 PP_StateClassificationFlags result = 0;

 if (classification & ATOM_PPLIB_CLASSIFICATION_BOOT)
  result |= PP_StateClassificationFlag_Boot;

 if (classification & ATOM_PPLIB_CLASSIFICATION_THERMAL)
  result |= PP_StateClassificationFlag_Thermal;

 if (classification &
   ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE)
  result |= PP_StateClassificationFlag_LimitedPowerSource;

 if (classification & ATOM_PPLIB_CLASSIFICATION_REST)
  result |= PP_StateClassificationFlag_Rest;

 if (classification & ATOM_PPLIB_CLASSIFICATION_FORCED)
  result |= PP_StateClassificationFlag_Forced;

 if (classification & ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE)
  result |= PP_StateClassificationFlag_3DPerformance;


 if (classification & ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE)
  result |= PP_StateClassificationFlag_ACOverdriveTemplate;

 if (classification & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
  result |= PP_StateClassificationFlag_Uvd;

 if (classification & ATOM_PPLIB_CLASSIFICATION_HDSTATE)
  result |= PP_StateClassificationFlag_UvdHD;

 if (classification & ATOM_PPLIB_CLASSIFICATION_SDSTATE)
  result |= PP_StateClassificationFlag_UvdSD;

 if (classification & ATOM_PPLIB_CLASSIFICATION_HD2STATE)
  result |= PP_StateClassificationFlag_HD2;

 if (classification & ATOM_PPLIB_CLASSIFICATION_ACPI)
  result |= PP_StateClassificationFlag_ACPI;

 if (classification2 & ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2)
  result |= PP_StateClassificationFlag_LimitedPowerSource_2;


 if (classification2 & ATOM_PPLIB_CLASSIFICATION2_ULV)
  result |= PP_StateClassificationFlag_ULV;

 if (classification2 & ATOM_PPLIB_CLASSIFICATION2_MVC)
  result |= PP_StateClassificationFlag_UvdMVC;

 return result;
}
