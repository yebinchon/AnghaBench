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
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {struct msm_ringbuffer** rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_INIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 scalar_t__ FUNC3 (struct msm_gpu*,struct msm_ringbuffer*) ; 

__attribute__((used)) static int FUNC4(struct msm_gpu *gpu)
{
	struct msm_ringbuffer *ring = gpu->rb[0];

	FUNC0(ring, CP_ME_INIT, 8);

	FUNC1(ring, 0x0000002f);

	/* Enable multiple hardware contexts */
	FUNC1(ring, 0x00000003);

	/* Enable error detection */
	FUNC1(ring, 0x20000000);

	/* Don't enable header dump */
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);

	/* No workarounds enabled */
	FUNC1(ring, 0x00000000);

	/* Pad rest of the cmds with 0's */
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);

	FUNC2(gpu, ring);
	return FUNC3(gpu, ring) ? 0 : -EINVAL;
}