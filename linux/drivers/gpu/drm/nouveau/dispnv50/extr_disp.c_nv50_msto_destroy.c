
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_msto {int encoder; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (int *) ;
 int kfree (struct nv50_msto*) ;
 struct nv50_msto* nv50_msto (struct drm_encoder*) ;

__attribute__((used)) static void
nv50_msto_destroy(struct drm_encoder *encoder)
{
 struct nv50_msto *msto = nv50_msto(encoder);
 drm_encoder_cleanup(&msto->encoder);
 kfree(msto);
}
