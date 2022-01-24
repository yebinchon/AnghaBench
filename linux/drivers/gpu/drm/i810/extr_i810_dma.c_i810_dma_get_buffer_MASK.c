#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_buf {int /*<<< orphan*/  total; int /*<<< orphan*/  idx; TYPE_2__* dev_private; struct drm_file* file_priv; } ;
struct TYPE_4__ {int granted; int /*<<< orphan*/  virtual; int /*<<< orphan*/  request_size; int /*<<< orphan*/  request_idx; } ;
typedef  TYPE_1__ drm_i810_dma_t ;
struct TYPE_5__ {int /*<<< orphan*/  virtual; } ;
typedef  TYPE_2__ drm_i810_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int ENOMEM ; 
 struct drm_buf* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_buf*) ; 
 int FUNC4 (struct drm_buf*,struct drm_file*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, drm_i810_dma_t *d,
			       struct drm_file *file_priv)
{
	struct drm_buf *buf;
	drm_i810_buf_priv_t *buf_priv;
	int retcode = 0;

	buf = FUNC2(dev);
	if (!buf) {
		retcode = -ENOMEM;
		FUNC0("retcode=%d\n", retcode);
		return retcode;
	}

	retcode = FUNC4(buf, file_priv);
	if (retcode) {
		FUNC3(dev, buf);
		FUNC1("mapbuf failed, retcode %d\n", retcode);
		return retcode;
	}
	buf->file_priv = file_priv;
	buf_priv = buf->dev_private;
	d->granted = 1;
	d->request_idx = buf->idx;
	d->request_size = buf->total;
	d->virtual = buf_priv->virtual;

	return retcode;
}