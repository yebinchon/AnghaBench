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
struct intel_uc_fw {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_SELECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc_fw*) ; 

void FUNC4(struct intel_uc_fw *uc_fw)
{
	if (!FUNC3(uc_fw))
		return;

	FUNC1(FUNC0(&uc_fw->obj));

	FUNC2(uc_fw, INTEL_UC_FIRMWARE_SELECTED);
}