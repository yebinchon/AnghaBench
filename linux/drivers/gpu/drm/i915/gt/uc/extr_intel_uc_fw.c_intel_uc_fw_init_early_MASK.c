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
struct intel_uc_fw {int type; scalar_t__* path; scalar_t__* status; } ;
typedef  enum intel_uc_fw_type { ____Placeholder_intel_uc_fw_type } intel_uc_fw_type ;
typedef  enum intel_platform { ____Placeholder_intel_platform } intel_platform ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_DISABLED ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_SELECTED ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uc_fw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_uc_fw *uc_fw,
			    enum intel_uc_fw_type type, bool supported,
			    enum intel_platform platform, u8 rev)
{
	/*
	 * we use FIRMWARE_UNINITIALIZED to detect checks against uc_fw->status
	 * before we're looked at the HW caps to see if we have uc support
	 */
	FUNC0(INTEL_UC_FIRMWARE_UNINITIALIZED);
	FUNC1(uc_fw->status);
	FUNC1(uc_fw->path);

	uc_fw->type = type;

	if (supported) {
		FUNC2(uc_fw, platform, rev);
		FUNC3(uc_fw);
	}

	FUNC4(uc_fw, uc_fw->path ? *uc_fw->path ?
				  INTEL_UC_FIRMWARE_SELECTED :
				  INTEL_UC_FIRMWARE_DISABLED :
				  INTEL_UC_FIRMWARE_NOT_SUPPORTED);
}