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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_uc_fw {int dummy; } ;
typedef  int /*<<< orphan*/  rsa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int UOS_RSA_SCRATCH_COUNT ; 
 size_t FUNC2 (struct intel_uc_fw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_uc_fw *guc_fw,
			 struct intel_uncore *uncore)
{
	u32 rsa[UOS_RSA_SCRATCH_COUNT];
	size_t copied;
	int i;

	copied = FUNC2(guc_fw, rsa, sizeof(rsa));
	FUNC0(copied < sizeof(rsa));

	for (i = 0; i < UOS_RSA_SCRATCH_COUNT; i++)
		FUNC3(uncore, FUNC1(i), rsa[i]);
}