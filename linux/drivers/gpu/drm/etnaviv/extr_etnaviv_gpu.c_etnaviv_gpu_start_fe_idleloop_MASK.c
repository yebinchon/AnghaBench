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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct etnaviv_gpu {TYPE_1__* mmu_context; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmdbuf_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_gpu*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct etnaviv_gpu *gpu)
{
	u32 address = FUNC1(&gpu->buffer,
				&gpu->mmu_context->cmdbuf_mapping);
	u16 prefetch;

	/* setup the MMU */
	FUNC3(gpu, gpu->mmu_context);

	/* Start command processor */
	prefetch = FUNC0(gpu);

	FUNC2(gpu, address, prefetch);
}