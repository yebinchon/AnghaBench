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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int /*<<< orphan*/  HEVC_ENC_CMD_FENCE ; 
 int /*<<< orphan*/  HEVC_ENC_CMD_TRAP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring, u64 addr,
			u64 seq, unsigned flags)
{

	FUNC0(flags & AMDGPU_FENCE_FLAG_64BIT);

	FUNC1(ring, HEVC_ENC_CMD_FENCE);
	FUNC1(ring, addr);
	FUNC1(ring, FUNC2(addr));
	FUNC1(ring, seq);
	FUNC1(ring, HEVC_ENC_CMD_TRAP);
}