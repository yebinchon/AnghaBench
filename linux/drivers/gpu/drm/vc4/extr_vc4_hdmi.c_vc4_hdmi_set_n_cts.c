
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int samplerate; } ;
struct vc4_hdmi {TYPE_2__ audio; struct drm_encoder* encoder; } ;
struct vc4_dev {int dummy; } ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;


 int HDMI_WRITE (int ,int) ;
 int VC4_HDMI_CRP_CFG ;
 int VC4_HDMI_CRP_CFG_EXTERNAL_CTS_EN ;
 int VC4_HDMI_CRP_CFG_N ;
 int VC4_HDMI_CTS_0 ;
 int VC4_HDMI_CTS_1 ;
 int VC4_SET_FIELD (int,int ) ;
 int do_div (int,int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_hdmi_set_n_cts(struct vc4_hdmi *hdmi)
{
 struct drm_encoder *encoder = hdmi->encoder;
 struct drm_crtc *crtc = encoder->crtc;
 struct drm_device *drm = encoder->dev;
 struct vc4_dev *vc4 = to_vc4_dev(drm);
 const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 u32 samplerate = hdmi->audio.samplerate;
 u32 n, cts;
 u64 tmp;

 n = 128 * samplerate / 1000;
 tmp = (u64)(mode->clock * 1000) * n;
 do_div(tmp, 128 * samplerate);
 cts = tmp;

 HDMI_WRITE(VC4_HDMI_CRP_CFG,
     VC4_HDMI_CRP_CFG_EXTERNAL_CTS_EN |
     VC4_SET_FIELD(n, VC4_HDMI_CRP_CFG_N));






 HDMI_WRITE(VC4_HDMI_CTS_0, cts);
 HDMI_WRITE(VC4_HDMI_CTS_1, cts);
}
