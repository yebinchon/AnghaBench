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
typedef  size_t uint32_t ;
struct vmw_stream {int paused; int /*<<< orphan*/  buf; } ;
struct vmw_private {struct vmw_overlay* overlay_priv; } ;
struct vmw_overlay {struct vmw_stream* stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmw_private*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct vmw_private*,size_t,int) ; 

__attribute__((used)) static int FUNC4(struct vmw_private *dev_priv,
			    uint32_t stream_id, bool pause,
			    bool interruptible)
{
	struct vmw_overlay *overlay = dev_priv->overlay_priv;
	struct vmw_stream *stream = &overlay->stream[stream_id];
	int ret;

	/* no buffer attached the stream is completely stopped */
	if (!stream->buf)
		return 0;

	/* If the stream is paused this is already done */
	if (!stream->paused) {
		ret = FUNC3(dev_priv, stream_id,
					    interruptible);
		if (ret)
			return ret;

		/* We just remove the NO_EVICT flag so no -ENOMEM */
		ret = FUNC2(dev_priv, stream->buf, false,
					      interruptible);
		if (interruptible && ret == -ERESTARTSYS)
			return ret;
		else
			FUNC0(ret != 0);
	}

	if (!pause) {
		FUNC1(&stream->buf);
		stream->paused = false;
	} else {
		stream->paused = true;
	}

	return 0;
}