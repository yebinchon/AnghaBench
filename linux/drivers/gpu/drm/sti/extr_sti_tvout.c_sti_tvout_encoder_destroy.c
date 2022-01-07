
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct sti_tvout_encoder*) ;
 struct sti_tvout_encoder* to_sti_tvout_encoder (struct drm_encoder*) ;

__attribute__((used)) static void sti_tvout_encoder_destroy(struct drm_encoder *encoder)
{
 struct sti_tvout_encoder *sti_encoder = to_sti_tvout_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(sti_encoder);
}
