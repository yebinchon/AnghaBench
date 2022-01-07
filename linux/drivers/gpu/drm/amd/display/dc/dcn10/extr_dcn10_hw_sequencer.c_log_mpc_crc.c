
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_hwseq {int dummy; } ;
struct dc_log_buffer_ctx {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc {struct dce_hwseq* hwseq; struct dc_context* ctx; } ;


 int DPP_TOP0_DPP_CRC_VAL_B_A ;
 int DPP_TOP0_DPP_CRC_VAL_R_G ;
 int DTN_INFO (char*,int ,int ,...) ;
 int MPC_CRC_RESULT_AR ;
 int MPC_CRC_RESULT_C ;
 int MPC_CRC_RESULT_GB ;
 scalar_t__ REG (int ) ;
 int REG_READ (int ) ;

__attribute__((used)) static void log_mpc_crc(struct dc *dc,
 struct dc_log_buffer_ctx *log_ctx)
{
 struct dc_context *dc_ctx = dc->ctx;
 struct dce_hwseq *hws = dc->hwseq;

 if (REG(MPC_CRC_RESULT_GB))
  DTN_INFO("MPC_CRC_RESULT_GB:%d MPC_CRC_RESULT_C:%d MPC_CRC_RESULT_AR:%d\n",
  REG_READ(MPC_CRC_RESULT_GB), REG_READ(MPC_CRC_RESULT_C), REG_READ(MPC_CRC_RESULT_AR));
 if (REG(DPP_TOP0_DPP_CRC_VAL_B_A))
  DTN_INFO("DPP_TOP0_DPP_CRC_VAL_B_A:%d DPP_TOP0_DPP_CRC_VAL_R_G:%d\n",
  REG_READ(DPP_TOP0_DPP_CRC_VAL_B_A), REG_READ(DPP_TOP0_DPP_CRC_VAL_R_G));
}
