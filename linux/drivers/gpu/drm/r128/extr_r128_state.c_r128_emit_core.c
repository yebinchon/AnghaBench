
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int scale_3d_cntl; } ;
struct TYPE_5__ {TYPE_3__ context_state; } ;
typedef TYPE_1__ drm_r128_sarea_t ;
struct TYPE_6__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_r128_private_t ;
typedef TYPE_3__ drm_r128_context_regs_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int ) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R128_SCALE_3D_CNTL ;
 int RING_LOCALS ;

__attribute__((used)) static __inline__ void r128_emit_core(drm_r128_private_t *dev_priv)
{
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_r128_context_regs_t *ctx = &sarea_priv->context_state;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(2);

 OUT_RING(CCE_PACKET0(R128_SCALE_3D_CNTL, 0));
 OUT_RING(ctx->scale_3d_cntl);

 ADVANCE_RING();
}
