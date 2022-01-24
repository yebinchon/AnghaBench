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
struct drm_device {int dummy; } ;
struct dma_buf_export_info {int /*<<< orphan*/  priv; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_buf*) ; 
 struct dma_buf* FUNC1 (struct dma_buf_export_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct dma_buf *FUNC4(struct drm_device *dev,
				      struct dma_buf_export_info *exp_info)
{
	struct dma_buf *dma_buf;

	dma_buf = FUNC1(exp_info);
	if (FUNC0(dma_buf))
		return dma_buf;

	FUNC2(dev);
	FUNC3(exp_info->priv);

	return dma_buf;
}