#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hdmi_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  notifier; int /*<<< orphan*/  hotplug_work; scalar_t__ powered; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdmi_context* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct hdmi_context *hdata = FUNC2(encoder);

	FUNC3(&hdata->mutex);

	if (hdata->powered) {
		/*
		 * The SFRs of VP and Mixer are updated by Vertical Sync of
		 * Timing generator which is a part of HDMI so the sequence
		 * to disable TV Subsystem should be as following,
		 *	VP -> Mixer -> HDMI
		 *
		 * To achieve such sequence HDMI is disabled together with
		 * HDMI PHY, via pipe clock callback.
		 */
		FUNC4(&hdata->mutex);
		FUNC0(&hdata->hotplug_work);
		FUNC1(hdata->notifier,
					   CEC_PHYS_ADDR_INVALID);
		return;
	}

	FUNC4(&hdata->mutex);
}