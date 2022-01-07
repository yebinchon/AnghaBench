
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int DRM_DEBUG_KMS (char*,int ) ;

__attribute__((used)) static int intel_no_opregion_vbt_callback(const struct dmi_system_id *id)
{
 DRM_DEBUG_KMS("Falling back to manually reading VBT from "
        "VBIOS ROM for %s\n", id->ident);
 return 1;
}
