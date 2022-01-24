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
typedef  int /*<<< orphan*/  uint64_t ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_RESOURCES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_ring *kiq_ring, uint64_t queue_mask)
{
	FUNC3(kiq_ring, FUNC0(PACKET3_SET_RESOURCES, 6));
	FUNC3(kiq_ring, FUNC2(0) |
			  FUNC1(0));	/* vmid_mask:0 queue_type:0 (KIQ) */
	FUNC3(kiq_ring, FUNC4(queue_mask));	/* queue mask lo */
	FUNC3(kiq_ring, FUNC5(queue_mask));	/* queue mask hi */
	FUNC3(kiq_ring, 0);	/* gws mask lo */
	FUNC3(kiq_ring, 0);	/* gws mask hi */
	FUNC3(kiq_ring, 0);	/* oac mask */
	FUNC3(kiq_ring, 0);	/* gds heap base:0, gds heap size:0 */
}