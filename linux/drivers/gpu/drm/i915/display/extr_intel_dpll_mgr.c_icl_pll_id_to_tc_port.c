
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_ID_ICL_MGPLL1 ;

__attribute__((used)) static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
{
 return id - DPLL_ID_ICL_MGPLL1;
}
