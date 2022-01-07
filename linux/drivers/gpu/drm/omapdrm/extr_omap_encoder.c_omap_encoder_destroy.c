
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct omap_encoder*) ;
 struct omap_encoder* to_omap_encoder (struct drm_encoder*) ;

__attribute__((used)) static void omap_encoder_destroy(struct drm_encoder *encoder)
{
 struct omap_encoder *omap_encoder = to_omap_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(omap_encoder);
}
