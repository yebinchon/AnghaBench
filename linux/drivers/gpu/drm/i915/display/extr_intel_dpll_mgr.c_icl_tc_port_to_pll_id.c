
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int DPLL_ID_ICL_MGPLL1 ;

enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
{
 return tc_port + DPLL_ID_ICL_MGPLL1;
}
