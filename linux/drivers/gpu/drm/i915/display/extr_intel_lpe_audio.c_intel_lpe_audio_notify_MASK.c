#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_hdmi_lpe_audio_port_pdata {int pipe; int ls_clock; int dp_output; int /*<<< orphan*/  eld; } ;
struct intel_hdmi_lpe_audio_pdata {int /*<<< orphan*/  lpe_audio_slock; int /*<<< orphan*/  (* notify_audio_lpe ) (TYPE_2__*,int) ;struct intel_hdmi_lpe_audio_port_pdata* port; } ;
struct TYPE_3__ {TYPE_2__* platdev; } ;
struct drm_i915_private {TYPE_1__ lpe_audio; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HDMI_MAX_ELD_BYTES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PORT_B ; 
 int VLV_AMP_MUTE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct intel_hdmi_lpe_audio_pdata* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

void FUNC10(struct drm_i915_private *dev_priv,
			    enum pipe pipe, enum port port,
			    const void *eld, int ls_clock, bool dp_output)
{
	unsigned long irqflags;
	struct intel_hdmi_lpe_audio_pdata *pdata;
	struct intel_hdmi_lpe_audio_port_pdata *ppdata;
	u32 audio_enable;

	if (!FUNC0(dev_priv))
		return;

	pdata = FUNC4(&dev_priv->lpe_audio.platdev->dev);
	ppdata = &pdata->port[port - PORT_B];

	FUNC7(&pdata->lpe_audio_slock, irqflags);

	audio_enable = FUNC1(FUNC3(port));

	if (eld != NULL) {
		FUNC5(ppdata->eld, eld, HDMI_MAX_ELD_BYTES);
		ppdata->pipe = pipe;
		ppdata->ls_clock = ls_clock;
		ppdata->dp_output = dp_output;

		/* Unmute the amp for both DP and HDMI */
		FUNC2(FUNC3(port),
			   audio_enable & ~VLV_AMP_MUTE);
	} else {
		FUNC6(ppdata->eld, 0, HDMI_MAX_ELD_BYTES);
		ppdata->pipe = -1;
		ppdata->ls_clock = 0;
		ppdata->dp_output = false;

		/* Mute the amp for both DP and HDMI */
		FUNC2(FUNC3(port),
			   audio_enable | VLV_AMP_MUTE);
	}

	if (pdata->notify_audio_lpe)
		pdata->notify_audio_lpe(dev_priv->lpe_audio.platdev, port - PORT_B);

	FUNC8(&pdata->lpe_audio_slock, irqflags);
}