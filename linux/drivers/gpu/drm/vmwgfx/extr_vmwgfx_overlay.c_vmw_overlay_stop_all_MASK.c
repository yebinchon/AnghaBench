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
struct vmw_stream {int /*<<< orphan*/  buf; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {int /*<<< orphan*/  mutex; struct vmw_stream* stream; } ;

/* Variables and functions */
 int VMW_MAX_NUM_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vmw_private*,int,int,int) ; 

int FUNC4(struct vmw_private *dev_priv)
{
	struct vmw_overlay *overlay = dev_priv->overlay_priv;
	int i, ret;

	if (!overlay)
		return 0;

	FUNC1(&overlay->mutex);

	for (i = 0; i < VMW_MAX_NUM_STREAMS; i++) {
		struct vmw_stream *stream = &overlay->stream[i];
		if (!stream->buf)
			continue;

		ret = FUNC3(dev_priv, i, false, false);
		FUNC0(ret != 0);
	}

	FUNC2(&overlay->mutex);

	return 0;
}