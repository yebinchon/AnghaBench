#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_psb_private {int vdc_irq_mask; TYPE_1__* ops; int /*<<< orphan*/  irqmask_lock; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int (* hotplug ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int /*<<< orphan*/  PSB_CR_EVENT_STATUS ; 
 int /*<<< orphan*/  PSB_CR_EVENT_STATUS2 ; 
 int /*<<< orphan*/  PSB_INT_IDENTITY_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _PSB_IRQ_ASLE ; 
 int _PSB_IRQ_DISP_HOTSYNC ; 
 int _PSB_IRQ_SGX_FLAG ; 
 int _PSB_PIPE_EVENT_FLAG ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct drm_device*) ; 

irqreturn_t FUNC12(int irq, void *arg)
{
	struct drm_device *dev = arg;
	struct drm_psb_private *dev_priv = dev->dev_private;
	uint32_t vdc_stat, dsp_int = 0, sgx_int = 0, hotplug_int = 0;
	u32 sgx_stat_1, sgx_stat_2;
	int handled = 0;

	FUNC9(&dev_priv->irqmask_lock);

	vdc_stat = FUNC1(PSB_INT_IDENTITY_R);

	if (vdc_stat & (_PSB_PIPE_EVENT_FLAG|_PSB_IRQ_ASLE))
		dsp_int = 1;

	/* FIXME: Handle Medfield
	if (vdc_stat & _MDFLD_DISP_ALL_IRQ_FLAG)
		dsp_int = 1;
	*/

	if (vdc_stat & _PSB_IRQ_SGX_FLAG)
		sgx_int = 1;
	if (vdc_stat & _PSB_IRQ_DISP_HOTSYNC)
		hotplug_int = 1;

	vdc_stat &= dev_priv->vdc_irq_mask;
	FUNC10(&dev_priv->irqmask_lock);

	if (dsp_int && FUNC5(dev)) {
		FUNC7(dev, vdc_stat);
		handled = 1;
	}

	if (sgx_int) {
		sgx_stat_1 = FUNC0(PSB_CR_EVENT_STATUS);
		sgx_stat_2 = FUNC0(PSB_CR_EVENT_STATUS2);
		FUNC6(dev, sgx_stat_1, sgx_stat_2);
		handled = 1;
	}

	/* Note: this bit has other meanings on some devices, so we will
	   need to address that later if it ever matters */
	if (hotplug_int && dev_priv->ops->hotplug) {
		handled = dev_priv->ops->hotplug(dev);
		FUNC4(PORT_HOTPLUG_STAT, FUNC3(PORT_HOTPLUG_STAT));
	}

	FUNC2(vdc_stat, PSB_INT_IDENTITY_R);
	(void) FUNC1(PSB_INT_IDENTITY_R);
	FUNC8();

	if (!handled)
		return IRQ_NONE;

	return IRQ_HANDLED;
}