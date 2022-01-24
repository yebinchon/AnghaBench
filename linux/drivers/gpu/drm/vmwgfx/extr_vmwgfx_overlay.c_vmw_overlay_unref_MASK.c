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
typedef  size_t uint32_t ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int /*<<< orphan*/  mutex; TYPE_1__* stream; } ;
struct TYPE_2__ {int claimed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSYS ; 
 size_t VMW_MAX_NUM_STREAMS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,size_t,int,int) ; 

int FUNC5(struct vmw_private *dev_priv, uint32_t stream_id)
{
	struct vmw_overlay *overlay = dev_priv->overlay_priv;

	FUNC0(stream_id >= VMW_MAX_NUM_STREAMS);

	if (!overlay)
		return -ENOSYS;

	FUNC2(&overlay->mutex);

	FUNC1(!overlay->stream[stream_id].claimed);
	FUNC4(dev_priv, stream_id, false, false);
	overlay->stream[stream_id].claimed = false;

	FUNC3(&overlay->mutex);
	return 0;
}