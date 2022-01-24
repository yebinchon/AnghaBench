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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct srpt_ioctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*) ; 

__attribute__((used)) static void FUNC4(struct srpt_device *sdev, struct srpt_ioctx *ioctx,
			    struct kmem_cache *buf_cache,
			    enum dma_data_direction dir)
{
	if (!ioctx)
		return;

	FUNC0(sdev->device, ioctx->dma,
			    FUNC3(buf_cache), dir);
	FUNC2(buf_cache, ioctx->buf);
	FUNC1(ioctx);
}