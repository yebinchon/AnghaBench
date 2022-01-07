
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct vc4_dev {TYPE_1__ ctm_manager; } ;
struct vc4_ctm_state {scalar_t__ fifo; struct drm_color_ctm* ctm; } ;
struct drm_color_ctm {int * matrix; } ;
struct drm_atomic_state {int dummy; } ;


 int HVS_WRITE (int ,int) ;
 int SCALER_OLEDCOEF0 ;
 int SCALER_OLEDCOEF0_B_TO_B ;
 int SCALER_OLEDCOEF0_B_TO_G ;
 int SCALER_OLEDCOEF0_B_TO_R ;
 int SCALER_OLEDCOEF1 ;
 int SCALER_OLEDCOEF1_G_TO_B ;
 int SCALER_OLEDCOEF1_G_TO_G ;
 int SCALER_OLEDCOEF1_G_TO_R ;
 int SCALER_OLEDCOEF2 ;
 int SCALER_OLEDCOEF2_R_TO_B ;
 int SCALER_OLEDCOEF2_R_TO_G ;
 int SCALER_OLEDCOEF2_R_TO_R ;
 int SCALER_OLEDOFFS ;
 int SCALER_OLEDOFFS_DISPFIFO ;
 int VC4_SET_FIELD (scalar_t__,int ) ;
 struct vc4_ctm_state* to_vc4_ctm_state (int ) ;
 scalar_t__ vc4_ctm_s31_32_to_s0_9 (int ) ;

__attribute__((used)) static void
vc4_ctm_commit(struct vc4_dev *vc4, struct drm_atomic_state *state)
{
 struct vc4_ctm_state *ctm_state = to_vc4_ctm_state(vc4->ctm_manager.state);
 struct drm_color_ctm *ctm = ctm_state->ctm;

 if (ctm_state->fifo) {
  HVS_WRITE(SCALER_OLEDCOEF2,
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[0]),
     SCALER_OLEDCOEF2_R_TO_R) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[3]),
     SCALER_OLEDCOEF2_R_TO_G) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[6]),
     SCALER_OLEDCOEF2_R_TO_B));
  HVS_WRITE(SCALER_OLEDCOEF1,
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[1]),
     SCALER_OLEDCOEF1_G_TO_R) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[4]),
     SCALER_OLEDCOEF1_G_TO_G) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[7]),
     SCALER_OLEDCOEF1_G_TO_B));
  HVS_WRITE(SCALER_OLEDCOEF0,
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[2]),
     SCALER_OLEDCOEF0_B_TO_R) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[5]),
     SCALER_OLEDCOEF0_B_TO_G) |
     VC4_SET_FIELD(vc4_ctm_s31_32_to_s0_9(ctm->matrix[8]),
     SCALER_OLEDCOEF0_B_TO_B));
 }

 HVS_WRITE(SCALER_OLEDOFFS,
    VC4_SET_FIELD(ctm_state->fifo, SCALER_OLEDOFFS_DISPFIFO));
}
