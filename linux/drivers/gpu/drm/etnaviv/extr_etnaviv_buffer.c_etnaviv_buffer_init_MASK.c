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
typedef  int u16 ;
struct etnaviv_cmdbuf {int user_size; } ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int /*<<< orphan*/  lock; struct etnaviv_cmdbuf buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmdbuf_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_cmdbuf*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_cmdbuf*) ; 
 scalar_t__ FUNC2 (struct etnaviv_cmdbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u16 FUNC4(struct etnaviv_gpu *gpu)
{
	struct etnaviv_cmdbuf *buffer = &gpu->buffer;

	FUNC3(&gpu->lock);

	/* initialize buffer */
	buffer->user_size = 0;

	FUNC1(buffer);
	FUNC0(buffer, 2,
		 FUNC2(buffer, &gpu->mmu_context->cmdbuf_mapping)
		 + buffer->user_size - 4);

	return buffer->user_size / 8;
}