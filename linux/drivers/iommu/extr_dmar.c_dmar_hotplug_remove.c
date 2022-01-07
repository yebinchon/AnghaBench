
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int DMAR_DSM_FUNC_ATSR ;
 int DMAR_DSM_FUNC_DRHD ;
 int WARN_ON (int) ;
 int dmar_check_one_atsr ;
 int dmar_hp_add_drhd ;
 int dmar_hp_release_drhd ;
 int dmar_hp_remove_drhd ;
 int dmar_release_one_atsr ;
 int dmar_walk_dsm_resource (int ,int ,int *,int *) ;

__attribute__((used)) static int dmar_hotplug_remove(acpi_handle handle)
{
 int ret;

 ret = dmar_walk_dsm_resource(handle, DMAR_DSM_FUNC_ATSR,
         &dmar_check_one_atsr, ((void*)0));
 if (ret)
  return ret;

 ret = dmar_walk_dsm_resource(handle, DMAR_DSM_FUNC_DRHD,
         &dmar_hp_remove_drhd, ((void*)0));
 if (ret == 0) {
  WARN_ON(dmar_walk_dsm_resource(handle, DMAR_DSM_FUNC_ATSR,
            &dmar_release_one_atsr, ((void*)0)));
  WARN_ON(dmar_walk_dsm_resource(handle, DMAR_DSM_FUNC_DRHD,
            &dmar_hp_release_drhd, ((void*)0)));
 } else {
  dmar_walk_dsm_resource(handle, DMAR_DSM_FUNC_DRHD,
           &dmar_hp_add_drhd, ((void*)0));
 }

 return ret;
}
