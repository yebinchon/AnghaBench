
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;







 int MC_SEQ_CAS_TIMING_LP ;


 int MC_SEQ_MISC_TIMING2_LP ;
 int MC_SEQ_MISC_TIMING_LP ;
 int MC_SEQ_PMG_CMD_EMRS_LP ;
 int MC_SEQ_PMG_CMD_MRS1_LP ;
 int MC_SEQ_PMG_CMD_MRS2_LP ;
 int MC_SEQ_PMG_CMD_MRS_LP ;

 int MC_SEQ_PMG_TIMING_LP ;

 int MC_SEQ_RAS_TIMING_LP ;

 int MC_SEQ_RD_CTL_D0_LP ;

 int MC_SEQ_RD_CTL_D1_LP ;

 int MC_SEQ_WR_CTL_2_LP ;

 int MC_SEQ_WR_CTL_D0_LP ;

 int MC_SEQ_WR_CTL_D1_LP ;

__attribute__((used)) static bool si_check_s0_mc_reg_index(u16 in_reg, u16 *out_reg)
{
 bool result = 1;
 switch (in_reg) {
 case 133:
  *out_reg = MC_SEQ_RAS_TIMING_LP;
  break;
 case 137:
  *out_reg = MC_SEQ_CAS_TIMING_LP;
  break;
 case 136:
  *out_reg = MC_SEQ_MISC_TIMING_LP;
  break;
 case 135:
  *out_reg = MC_SEQ_MISC_TIMING2_LP;
  break;
 case 132:
  *out_reg = MC_SEQ_RD_CTL_D0_LP;
  break;
 case 131:
  *out_reg = MC_SEQ_RD_CTL_D1_LP;
  break;
 case 129:
  *out_reg = MC_SEQ_WR_CTL_D0_LP;
  break;
 case 128:
  *out_reg = MC_SEQ_WR_CTL_D1_LP;
  break;
 case 141:
  *out_reg = MC_SEQ_PMG_CMD_EMRS_LP;
  break;
 case 140:
  *out_reg = MC_SEQ_PMG_CMD_MRS_LP;
  break;
 case 139:
  *out_reg = MC_SEQ_PMG_CMD_MRS1_LP;
  break;
 case 134:
  *out_reg = MC_SEQ_PMG_TIMING_LP;
  break;
 case 138:
  *out_reg = MC_SEQ_PMG_CMD_MRS2_LP;
  break;
 case 130:
  *out_reg = MC_SEQ_WR_CTL_2_LP;
  break;
 default:
  result = 0;
  break;
 }

 return result;
}
