
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct nouveau_encoder*) ;
 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;

__attribute__((used)) static void nv04_dac_destroy(struct drm_encoder *encoder)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(nv_encoder);
}
