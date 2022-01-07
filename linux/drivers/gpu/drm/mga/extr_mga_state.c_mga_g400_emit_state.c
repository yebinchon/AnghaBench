
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int dirty; int warp_pipe; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_9__ {int warp_pipe; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;


 int MGA_T2 ;
 unsigned int MGA_UPLOAD_CONTEXT ;
 unsigned int MGA_UPLOAD_TEX0 ;
 unsigned int MGA_UPLOAD_TEX1 ;
 int mga_g400_emit_context (TYPE_2__*) ;
 int mga_g400_emit_pipe (TYPE_2__*) ;
 int mga_g400_emit_tex0 (TYPE_2__*) ;
 int mga_g400_emit_tex1 (TYPE_2__*) ;

__attribute__((used)) static void mga_g400_emit_state(drm_mga_private_t *dev_priv)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 unsigned int dirty = sarea_priv->dirty;
 int multitex = sarea_priv->warp_pipe & MGA_T2;

 if (sarea_priv->warp_pipe != dev_priv->warp_pipe) {
  mga_g400_emit_pipe(dev_priv);
  dev_priv->warp_pipe = sarea_priv->warp_pipe;
 }

 if (dirty & MGA_UPLOAD_CONTEXT) {
  mga_g400_emit_context(dev_priv);
  sarea_priv->dirty &= ~MGA_UPLOAD_CONTEXT;
 }

 if (dirty & MGA_UPLOAD_TEX0) {
  mga_g400_emit_tex0(dev_priv);
  sarea_priv->dirty &= ~MGA_UPLOAD_TEX0;
 }

 if ((dirty & MGA_UPLOAD_TEX1) && multitex) {
  mga_g400_emit_tex1(dev_priv);
  sarea_priv->dirty &= ~MGA_UPLOAD_TEX1;
 }
}
