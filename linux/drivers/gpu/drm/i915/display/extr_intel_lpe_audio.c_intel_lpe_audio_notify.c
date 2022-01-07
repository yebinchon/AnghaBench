
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi_lpe_audio_port_pdata {int pipe; int ls_clock; int dp_output; int eld; } ;
struct intel_hdmi_lpe_audio_pdata {int lpe_audio_slock; int (* notify_audio_lpe ) (TYPE_2__*,int) ;struct intel_hdmi_lpe_audio_port_pdata* port; } ;
struct TYPE_3__ {TYPE_2__* platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int dev; } ;


 int HAS_LPE_AUDIO (struct drm_i915_private*) ;
 int HDMI_MAX_ELD_BYTES ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PORT_B ;
 int VLV_AMP_MUTE ;
 int VLV_AUD_PORT_EN_DBG (int) ;
 struct intel_hdmi_lpe_audio_pdata* dev_get_platdata (int *) ;
 int memcpy (int ,void const*,int ) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_2__*,int) ;

void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
       enum pipe pipe, enum port port,
       const void *eld, int ls_clock, bool dp_output)
{
 unsigned long irqflags;
 struct intel_hdmi_lpe_audio_pdata *pdata;
 struct intel_hdmi_lpe_audio_port_pdata *ppdata;
 u32 audio_enable;

 if (!HAS_LPE_AUDIO(dev_priv))
  return;

 pdata = dev_get_platdata(&dev_priv->lpe_audio.platdev->dev);
 ppdata = &pdata->port[port - PORT_B];

 spin_lock_irqsave(&pdata->lpe_audio_slock, irqflags);

 audio_enable = I915_READ(VLV_AUD_PORT_EN_DBG(port));

 if (eld != ((void*)0)) {
  memcpy(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
  ppdata->pipe = pipe;
  ppdata->ls_clock = ls_clock;
  ppdata->dp_output = dp_output;


  I915_WRITE(VLV_AUD_PORT_EN_DBG(port),
      audio_enable & ~VLV_AMP_MUTE);
 } else {
  memset(ppdata->eld, 0, HDMI_MAX_ELD_BYTES);
  ppdata->pipe = -1;
  ppdata->ls_clock = 0;
  ppdata->dp_output = 0;


  I915_WRITE(VLV_AUD_PORT_EN_DBG(port),
      audio_enable | VLV_AMP_MUTE);
 }

 if (pdata->notify_audio_lpe)
  pdata->notify_audio_lpe(dev_priv->lpe_audio.platdev, port - PORT_B);

 spin_unlock_irqrestore(&pdata->lpe_audio_slock, irqflags);
}
