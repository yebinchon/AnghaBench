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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct msm_ringbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_REG_TO_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct msm_ringbuffer *ring, u32 counter,
		u64 iova)
{
	FUNC0(ring, CP_REG_TO_MEM, 3);
	FUNC1(ring, counter | (1 << 30) | (2 << 18));
	FUNC1(ring, FUNC2(iova));
	FUNC1(ring, FUNC3(iova));
}