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
struct intel_uc_fw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct intel_uc_fw*) ; 

__attribute__((used)) static inline void FUNC2(struct intel_uc_fw *uc_fw)
{
	if (FUNC1(uc_fw))
		FUNC0(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
}