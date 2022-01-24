#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_drm_private {unsigned int num_pipes; int /*<<< orphan*/  channels; struct omap_drm_pipeline* pipes; } ;
struct omap_drm_pipeline {TYPE_1__* output; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *ddev)
{
	struct omap_drm_private *priv = ddev->dev_private;
	unsigned int i;

	for (i = 0; i < priv->num_pipes; i++) {
		struct omap_drm_pipeline *pipe = &priv->pipes[i];

		if (pipe->output->panel)
			FUNC0(pipe->output->panel);

		FUNC2(NULL, pipe->output);

		FUNC3(pipe->output);
		pipe->output = NULL;
	}

	FUNC1(&priv->channels, 0, sizeof(priv->channels));

	priv->num_pipes = 0;
}