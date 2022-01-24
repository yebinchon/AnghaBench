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
struct TYPE_2__ {int mute; } ;
struct hdmi_context {int /*<<< orphan*/  mutex; scalar_t__ powered; TYPE_1__ audio; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hdmi_context* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *data)
{
	struct hdmi_context *hdata = FUNC0(dev);

	FUNC2(&hdata->mutex);

	hdata->audio.mute = true;

	if (hdata->powered)
		FUNC1(hdata);

	FUNC3(&hdata->mutex);
}