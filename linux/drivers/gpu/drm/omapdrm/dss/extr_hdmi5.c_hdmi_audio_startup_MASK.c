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
struct omap_hdmi {void (* audio_abort_cb ) (struct device*) ;int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			      void (*abort_cb)(struct device *dev))
{
	struct omap_hdmi *hd = FUNC1(dev);

	FUNC2(&hd->lock);

	FUNC0(hd->audio_abort_cb != NULL);

	hd->audio_abort_cb = abort_cb;

	FUNC3(&hd->lock);

	return 0;
}