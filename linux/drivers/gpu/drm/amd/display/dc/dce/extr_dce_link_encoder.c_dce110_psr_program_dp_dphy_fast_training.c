
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dce110_link_encoder {int dummy; } ;


 int DPHY_LOAD_BS_COUNT ;
 int DPHY_RX_FAST_TRAINING_CAPABLE ;
 int DP_DPHY_BS_SR_SWAP_CNTL ;
 int DP_DPHY_FAST_TRAINING ;
 int REG_UPDATE (int ,int ,int) ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;

void dce110_psr_program_dp_dphy_fast_training(struct link_encoder *enc,
   bool exit_link_training_required)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);

 if (exit_link_training_required)
  REG_UPDATE(DP_DPHY_FAST_TRAINING,
    DPHY_RX_FAST_TRAINING_CAPABLE, 1);
 else {
  REG_UPDATE(DP_DPHY_FAST_TRAINING,
    DPHY_RX_FAST_TRAINING_CAPABLE, 0);
  REG_UPDATE(DP_DPHY_BS_SR_SWAP_CNTL, DPHY_LOAD_BS_COUNT, 0x5);
 }
}
