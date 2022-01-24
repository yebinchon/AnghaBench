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
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_CLK_SEL_MASK ; 
#define  DDI_CLK_SEL_NONE 132 
#define  DDI_CLK_SEL_TBT_162 131 
#define  DDI_CLK_SEL_TBT_270 130 
#define  DDI_CLK_SEL_TBT_540 129 
#define  DDI_CLK_SEL_TBT_810 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct drm_i915_private *dev_priv,
				 enum port port)
{
	u32 val = FUNC1(FUNC0(port)) & DDI_CLK_SEL_MASK;

	switch (val) {
	case DDI_CLK_SEL_NONE:
		return 0;
	case DDI_CLK_SEL_TBT_162:
		return 162000;
	case DDI_CLK_SEL_TBT_270:
		return 270000;
	case DDI_CLK_SEL_TBT_540:
		return 540000;
	case DDI_CLK_SEL_TBT_810:
		return 810000;
	default:
		FUNC2(val);
		return 0;
	}
}