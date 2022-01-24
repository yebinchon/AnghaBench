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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int CGCG_CGTT_LOCAL0_MASK ; 
 int CGCG_CGTT_LOCAL1_MASK ; 
 int /*<<< orphan*/  CG_CGTT_LOCAL_0 ; 
 int /*<<< orphan*/  CG_CGTT_LOCAL_1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev, bool enable)
{
	u32 local0;
	u32 local1;

	local0 = FUNC0(CG_CGTT_LOCAL_0);
	local1 = FUNC0(CG_CGTT_LOCAL_1);

	if (enable) {
		FUNC1(CG_CGTT_LOCAL_0, (0 & CGCG_CGTT_LOCAL0_MASK) | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
		FUNC1(CG_CGTT_LOCAL_1, (0 & CGCG_CGTT_LOCAL1_MASK) | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );
	} else {
		FUNC1(CG_CGTT_LOCAL_0, (0xFFFFFFFF & CGCG_CGTT_LOCAL0_MASK) | (local0 & ~CGCG_CGTT_LOCAL0_MASK) );
		FUNC1(CG_CGTT_LOCAL_1, (0xFFFFCFFF & CGCG_CGTT_LOCAL1_MASK) | (local1 & ~CGCG_CGTT_LOCAL1_MASK) );
	}
}