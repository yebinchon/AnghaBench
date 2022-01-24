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
typedef  int /*<<< orphan*/  u8 ;
struct intel_dp {int /*<<< orphan*/  train_set; } ;

/* Variables and functions */
 int FUNC0 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC3(struct intel_dp *intel_dp,
			u8 dp_train_pat)
{
	FUNC2(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
	FUNC1(intel_dp);
	return FUNC0(intel_dp, dp_train_pat);
}