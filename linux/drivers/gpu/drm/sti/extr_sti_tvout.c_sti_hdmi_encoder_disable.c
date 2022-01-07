
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_tvout {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int TVO_VIP_HDMI ;
 struct sti_tvout* to_sti_tvout (struct drm_encoder*) ;
 int tvout_write (struct sti_tvout*,int,int ) ;

__attribute__((used)) static void sti_hdmi_encoder_disable(struct drm_encoder *encoder)
{
 struct sti_tvout *tvout = to_sti_tvout(encoder);


 tvout_write(tvout, 0x0, TVO_VIP_HDMI);
}
