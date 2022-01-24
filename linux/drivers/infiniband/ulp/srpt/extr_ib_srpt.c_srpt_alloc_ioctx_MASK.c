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
struct srpt_ioctx {int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; } ;
struct srpt_device {int /*<<< orphan*/  device; } ;
struct kmem_cache {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct srpt_ioctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kmem_cache*) ; 
 struct srpt_ioctx* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct srpt_ioctx *FUNC7(struct srpt_device *sdev,
					   int ioctx_size,
					   struct kmem_cache *buf_cache,
					   enum dma_data_direction dir)
{
	struct srpt_ioctx *ioctx;

	ioctx = FUNC6(ioctx_size, GFP_KERNEL);
	if (!ioctx)
		goto err;

	ioctx->buf = FUNC3(buf_cache, GFP_KERNEL);
	if (!ioctx->buf)
		goto err_free_ioctx;

	ioctx->dma = FUNC0(sdev->device, ioctx->buf,
				       FUNC5(buf_cache), dir);
	if (FUNC1(sdev->device, ioctx->dma))
		goto err_free_buf;

	return ioctx;

err_free_buf:
	FUNC4(buf_cache, ioctx->buf);
err_free_ioctx:
	FUNC2(ioctx);
err:
	return NULL;
}