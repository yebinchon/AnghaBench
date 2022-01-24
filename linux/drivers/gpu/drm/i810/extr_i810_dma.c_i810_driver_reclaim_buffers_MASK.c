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
struct drm_file {int dummy; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {int /*<<< orphan*/  dev_private; struct drm_device_dma* dma; } ;
struct drm_buf {struct drm_file* file_priv; TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ currently_mapped; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_1__ drm_i810_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int I810_BUF_CLIENT ; 
 int /*<<< orphan*/  I810_BUF_FREE ; 
 scalar_t__ I810_BUF_MAPPED ; 
 scalar_t__ I810_BUF_UNMAPPED ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

void FUNC3(struct drm_device *dev,
				 struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	int i;

	if (!dma)
		return;
	if (!dev->dev_private)
		return;
	if (!dma->buflist)
		return;

	FUNC2(dev);

	for (i = 0; i < dma->buf_count; i++) {
		struct drm_buf *buf = dma->buflist[i];
		drm_i810_buf_priv_t *buf_priv = buf->dev_private;

		if (buf->file_priv == file_priv && buf_priv) {
			int used = FUNC1(buf_priv->in_use, I810_BUF_CLIENT,
					   I810_BUF_FREE);

			if (used == I810_BUF_CLIENT)
				FUNC0("reclaimed from client\n");
			if (buf_priv->currently_mapped == I810_BUF_MAPPED)
				buf_priv->currently_mapped = I810_BUF_UNMAPPED;
		}
	}
}