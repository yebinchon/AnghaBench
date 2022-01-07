
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _vcs_dpi_soc_bounding_box_st {int dummy; } ;


 scalar_t__ ASICREV_IS_NAVI12_P (int ) ;
 struct _vcs_dpi_soc_bounding_box_st dcn2_0_nv12_soc ;
 struct _vcs_dpi_soc_bounding_box_st dcn2_0_soc ;

__attribute__((used)) static struct _vcs_dpi_soc_bounding_box_st *get_asic_rev_soc_bb(
 uint32_t hw_internal_rev)
{
 if (ASICREV_IS_NAVI12_P(hw_internal_rev))
  return &dcn2_0_nv12_soc;

 return &dcn2_0_soc;
}
