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
struct srpt_ioctx {int dummy; } ;
struct srpt_device {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srpt_ioctx**) ; 
 int /*<<< orphan*/  FUNC1 (struct srpt_device*,struct srpt_ioctx*,struct kmem_cache*,int) ; 

__attribute__((used)) static void FUNC2(struct srpt_ioctx **ioctx_ring,
				 struct srpt_device *sdev, int ring_size,
				 struct kmem_cache *buf_cache,
				 enum dma_data_direction dir)
{
	int i;

	if (!ioctx_ring)
		return;

	for (i = 0; i < ring_size; ++i)
		FUNC1(sdev, ioctx_ring[i], buf_cache, dir);
	FUNC0(ioctx_ring);
}