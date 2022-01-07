
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _vcs_dpi_ip_params_st {int dummy; } ;


 struct _vcs_dpi_ip_params_st dcn2_0_ip ;

__attribute__((used)) static struct _vcs_dpi_ip_params_st *get_asic_rev_ip_params(
 uint32_t hw_internal_rev)
{

 return &dcn2_0_ip;
}
