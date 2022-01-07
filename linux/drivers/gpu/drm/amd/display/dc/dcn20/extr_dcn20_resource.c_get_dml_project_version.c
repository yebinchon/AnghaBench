
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dml_project { ____Placeholder_dml_project } dml_project ;


 int DML_PROJECT_NAVI10v2 ;

__attribute__((used)) static enum dml_project get_dml_project_version(uint32_t hw_internal_rev)
{
 return DML_PROJECT_NAVI10v2;
}
