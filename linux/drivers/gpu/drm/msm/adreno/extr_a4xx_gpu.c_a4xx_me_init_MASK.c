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
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ME_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int) ; 
 int FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,struct msm_ringbuffer*) ; 

__attribute__((used)) static bool FUNC4(struct msm_gpu *gpu)
{
	struct msm_ringbuffer *ring = gpu->rb[0];

	FUNC0(ring, CP_ME_INIT, 17);
	FUNC1(ring, 0x000003f7);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000080);
	FUNC1(ring, 0x00000100);
	FUNC1(ring, 0x00000180);
	FUNC1(ring, 0x00006600);
	FUNC1(ring, 0x00000150);
	FUNC1(ring, 0x0000014e);
	FUNC1(ring, 0x00000154);
	FUNC1(ring, 0x00000001);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);
	FUNC1(ring, 0x00000000);

	gpu->funcs->flush(gpu, ring);
	return FUNC2(gpu);
}