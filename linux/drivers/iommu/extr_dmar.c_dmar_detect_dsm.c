
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int DMAR_DSM_REV_ID ;
 int acpi_check_dsm (int ,int *,int ,int) ;
 int dmar_hp_guid ;

__attribute__((used)) static inline bool dmar_detect_dsm(acpi_handle handle, int func)
{
 return acpi_check_dsm(handle, &dmar_hp_guid, DMAR_DSM_REV_ID, 1 << func);
}
