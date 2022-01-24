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
struct psb_offset {int /*<<< orphan*/  conf; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;

/* Variables and functions */
 int COUNT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PIPEACONF_PIPE_STATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

void FUNC3(struct drm_device *dev, int pipe)
{
	struct drm_psb_private *dev_priv = dev->dev_private;
	const struct psb_offset *map = &dev_priv->regmap[pipe];
	int count, temp;

	switch (pipe) {
	case 0:
	case 1:
	case 2:
		break;
	default:
		FUNC0("Illegal Pipe Number.\n");
		return;
	}

	/* FIXME JLIU7_PO */
	FUNC2(dev);
	return;

	/* Wait for for the pipe enable to take effect. */
	for (count = 0; count < COUNT_MAX; count++) {
		temp = FUNC1(map->conf);
		if (temp & PIPEACONF_PIPE_STATE)
			break;
	}
}