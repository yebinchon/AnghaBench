
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct mga_encoder*) ;
 struct mga_encoder* to_mga_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mga_encoder_destroy(struct drm_encoder *encoder)
{
 struct mga_encoder *mga_encoder = to_mga_encoder(encoder);
 drm_encoder_cleanup(encoder);
 kfree(mga_encoder);
}
