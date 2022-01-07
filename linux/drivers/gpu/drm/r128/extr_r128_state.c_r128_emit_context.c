
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fog_color_c; int texture_clr_cmp_msk_c; int texture_clr_cmp_clr_c; int misc_3d_state_cntl_reg; int tex_cntl_c; int z_sten_cntl_c; int z_pitch_c; int z_offset_c; int sc_bottom_right_c; int sc_top_left_c; int dp_gui_master_cntl_c; int dst_pitch_offset_c; } ;
struct TYPE_5__ {TYPE_3__ context_state; } ;
typedef TYPE_1__ drm_r128_sarea_t ;
struct TYPE_6__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_r128_private_t ;
typedef TYPE_3__ drm_r128_context_regs_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R128_DST_PITCH_OFFSET_C ;
 int RING_LOCALS ;

__attribute__((used)) static __inline__ void r128_emit_context(drm_r128_private_t *dev_priv)
{
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_r128_context_regs_t *ctx = &sarea_priv->context_state;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(13);

 OUT_RING(CCE_PACKET0(R128_DST_PITCH_OFFSET_C, 11));
 OUT_RING(ctx->dst_pitch_offset_c);
 OUT_RING(ctx->dp_gui_master_cntl_c);
 OUT_RING(ctx->sc_top_left_c);
 OUT_RING(ctx->sc_bottom_right_c);
 OUT_RING(ctx->z_offset_c);
 OUT_RING(ctx->z_pitch_c);
 OUT_RING(ctx->z_sten_cntl_c);
 OUT_RING(ctx->tex_cntl_c);
 OUT_RING(ctx->misc_3d_state_cntl_reg);
 OUT_RING(ctx->texture_clr_cmp_clr_c);
 OUT_RING(ctx->texture_clr_cmp_msk_c);
 OUT_RING(ctx->fog_color_c);

 ADVANCE_RING();
}
