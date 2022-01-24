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
struct intel_uncore {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int IOSF_BAR_SHIFT ; 
 int IOSF_BYTE_ENABLES_SHIFT ; 
 int IOSF_DEVFN_SHIFT ; 
 int IOSF_OPCODE_SHIFT ; 
 int IOSF_PORT_PUNIT ; 
 int IOSF_PORT_SHIFT ; 
 int IOSF_SB_BUSY ; 
 int SB_CRRDDA_NP ; 
 int SB_MRD_NP ; 
 int /*<<< orphan*/  VLV_IOSF_ADDR ; 
 int /*<<< orphan*/  VLV_IOSF_DATA ; 
 int /*<<< orphan*/  VLV_IOSF_DOORBELL_REQ ; 
 scalar_t__ FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct intel_uncore*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct drm_i915_private *i915,
			   u32 devfn, u32 port, u32 opcode,
			   u32 addr, u32 *val)
{
	struct intel_uncore *uncore = &i915->uncore;
	const bool is_read = (opcode == SB_MRD_NP || opcode == SB_CRRDDA_NP);
	int err;

	FUNC6(&i915->sb_lock);
	if (port == IOSF_PORT_PUNIT)
		FUNC5();

	/* Flush the previous comms, just in case it failed last time. */
	if (FUNC4(uncore,
				    VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
				    5)) {
		FUNC0("IOSF sideband idle wait (%s) timed out\n",
				 is_read ? "read" : "write");
		return -EAGAIN;
	}

	FUNC7();

	FUNC3(uncore, VLV_IOSF_ADDR, addr);
	FUNC3(uncore, VLV_IOSF_DATA, is_read ? 0 : *val);
	FUNC3(uncore, VLV_IOSF_DOORBELL_REQ,
			      (devfn << IOSF_DEVFN_SHIFT) |
			      (opcode << IOSF_OPCODE_SHIFT) |
			      (port << IOSF_PORT_SHIFT) |
			      (0xf << IOSF_BYTE_ENABLES_SHIFT) |
			      (0 << IOSF_BAR_SHIFT) |
			      IOSF_SB_BUSY);

	if (FUNC1(uncore,
					 VLV_IOSF_DOORBELL_REQ, IOSF_SB_BUSY, 0,
					 10000, 0, NULL) == 0) {
		if (is_read)
			*val = FUNC2(uncore, VLV_IOSF_DATA);
		err = 0;
	} else {
		FUNC0("IOSF sideband finish wait (%s) timed out\n",
				 is_read ? "read" : "write");
		err = -ETIMEDOUT;
	}

	FUNC8();

	return err;
}