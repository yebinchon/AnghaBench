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
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int /*<<< orphan*/  mutex; TYPE_1__* stream; } ;
struct TYPE_2__ {int claimed; } ;

/* Variables and functions */
 int ENOSYS ; 
 int ESRCH ; 
 int VMW_MAX_NUM_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct vmw_private *dev_priv, uint32_t *out)
{
	struct vmw_overlay *overlay = dev_priv->overlay_priv;
	int i;

	if (!overlay)
		return -ENOSYS;

	FUNC0(&overlay->mutex);

	for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {

		if (overlay->stream[i].claimed)
			continue;

		overlay->stream[i].claimed = true;
		*out = i;
		FUNC1(&overlay->mutex);
		return 0;
	}

	FUNC1(&overlay->mutex);
	return -ESRCH;
}