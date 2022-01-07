
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mstm; } ;
struct nouveau_encoder {TYPE_1__ dp; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct drm_encoder*) ;
 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;
 int nv50_mstm_del (int *) ;

__attribute__((used)) static void
nv50_sor_destroy(struct drm_encoder *encoder)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 nv50_mstm_del(&nv_encoder->dp.mstm);
 drm_encoder_cleanup(encoder);
 kfree(encoder);
}
