
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _vcs_dpi_ip_params_st {int dummy; } ;
struct _vcs_dpi_soc_bounding_box_st {int dummy; } ;
struct display_mode_lib {int project; int funcs; struct _vcs_dpi_ip_params_st ip; struct _vcs_dpi_soc_bounding_box_st soc; } ;
typedef enum dml_project { ____Placeholder_dml_project } dml_project ;





 int dml20_funcs ;
 int dml20v2_funcs ;
 int dml21_funcs ;

void dml_init_instance(struct display_mode_lib *lib,
  const struct _vcs_dpi_soc_bounding_box_st *soc_bb,
  const struct _vcs_dpi_ip_params_st *ip_params,
  enum dml_project project)
{
 lib->soc = *soc_bb;
 lib->ip = *ip_params;
 lib->project = project;
 switch (project) {
 default:
  break;
 }
}
