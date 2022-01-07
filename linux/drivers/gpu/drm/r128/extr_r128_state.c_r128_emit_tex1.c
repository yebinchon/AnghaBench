
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tex_border_color; int * tex_offset; int tex_combine_cntl; int tex_cntl; } ;
typedef TYPE_1__ drm_r128_texture_regs_t ;
struct TYPE_6__ {TYPE_1__* tex_state; } ;
typedef TYPE_2__ drm_r128_sarea_t ;
struct TYPE_7__ {TYPE_2__* sarea_priv; } ;
typedef TYPE_3__ drm_r128_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R128_MAX_TEXTURE_LEVELS ;
 int R128_SEC_TEXTURE_BORDER_COLOR_C ;
 int R128_SEC_TEX_CNTL_C ;
 int RING_LOCALS ;

__attribute__((used)) static __inline__ void r128_emit_tex1(drm_r128_private_t *dev_priv)
{
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_r128_texture_regs_t *tex = &sarea_priv->tex_state[1];
 int i;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(5 + R128_MAX_TEXTURE_LEVELS);

 OUT_RING(CCE_PACKET0(R128_SEC_TEX_CNTL_C, 1 + R128_MAX_TEXTURE_LEVELS));
 OUT_RING(tex->tex_cntl);
 OUT_RING(tex->tex_combine_cntl);
 for (i = 0; i < R128_MAX_TEXTURE_LEVELS; i++)
  OUT_RING(tex->tex_offset[i]);

 OUT_RING(CCE_PACKET0(R128_SEC_TEXTURE_BORDER_COLOR_C, 0));
 OUT_RING(tex->tex_border_color);

 ADVANCE_RING();
}
