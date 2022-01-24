#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; TYPE_2__* dev_private; } ;
struct drm_buf {TYPE_3__* dev_private; } ;
struct TYPE_4__ {scalar_t__ Size; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_i810_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  in_use; } ;
typedef  TYPE_3__ drm_i810_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CMD_REPORT_HEAD ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int I810_BUF_CLIENT ; 
 int /*<<< orphan*/  I810_BUF_FREE ; 
 int I810_BUF_HARDWARE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev)
{
	drm_i810_private_t *dev_priv = dev->dev_private;
	struct drm_device_dma *dma = dev->dma;
	int i, ret = 0;
	RING_LOCALS;

	FUNC5(dev);

	FUNC1(2);
	FUNC3(CMD_REPORT_HEAD);
	FUNC3(0);
	FUNC0();

	FUNC6(dev, dev_priv->ring.Size - 8);

	for (i = 0; i < dma->buf_count; i++) {
		struct drm_buf *buf = dma->buflist[i];
		drm_i810_buf_priv_t *buf_priv = buf->dev_private;

		int used = FUNC4(buf_priv->in_use, I810_BUF_HARDWARE,
				   I810_BUF_FREE);

		if (used == I810_BUF_HARDWARE)
			FUNC2("reclaimed from HARDWARE\n");
		if (used == I810_BUF_CLIENT)
			FUNC2("still on client\n");
	}

	return ret;
}