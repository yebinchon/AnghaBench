
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_tvout {int dummy; } ;
struct drm_encoder {TYPE_1__* crtc; } ;
struct TYPE_2__ {int mode; } ;


 int sti_crtc_is_main (TYPE_1__*) ;
 struct sti_tvout* to_sti_tvout (struct drm_encoder*) ;
 int tvout_hdmi_start (struct sti_tvout*,int ) ;
 int tvout_preformatter_set_matrix (struct sti_tvout*,int *) ;

__attribute__((used)) static void sti_hdmi_encoder_enable(struct drm_encoder *encoder)
{
 struct sti_tvout *tvout = to_sti_tvout(encoder);

 tvout_preformatter_set_matrix(tvout, &encoder->crtc->mode);

 tvout_hdmi_start(tvout, sti_crtc_is_main(encoder->crtc));
}
