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
struct intel_uc_fw {int /*<<< orphan*/  type; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENOEXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_FAIL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct intel_uc_fw *uc_fw)
{
	int err;

	/* this should happen before the load! */
	FUNC1(FUNC5(uc_fw));

	if (!FUNC4(uc_fw))
		return -ENOEXEC;

	err = FUNC2(uc_fw->obj);
	if (err) {
		FUNC0("%s fw pin-pages err=%d\n",
				 FUNC6(uc_fw->type), err);
		FUNC3(uc_fw, INTEL_UC_FIRMWARE_FAIL);
	}

	return err;
}