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
struct intel_lspcon {int dummy; } ;
typedef  enum drm_lspcon_mode { ____Placeholder_drm_lspcon_mode } drm_lspcon_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_LSPCON_MODE_LS ; 
 scalar_t__ DRM_LSPCON_MODE_PCON ; 
 scalar_t__ FUNC2 (struct intel_lspcon*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_lspcon*) ; 
 scalar_t__ FUNC4 (struct intel_lspcon*,int) ; 
 scalar_t__ FUNC5 (struct intel_lspcon*) ; 

void FUNC6(struct intel_lspcon *lspcon)
{
	enum drm_lspcon_mode expected_mode;

	if (FUNC5(lspcon)) {
		expected_mode = DRM_LSPCON_MODE_PCON;
		FUNC3(lspcon);
	} else {
		expected_mode = DRM_LSPCON_MODE_LS;
	}

	if (FUNC4(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
		return;

	if (FUNC2(lspcon, DRM_LSPCON_MODE_PCON))
		FUNC1("LSPCON resume failed\n");
	else
		FUNC0("LSPCON resume success\n");
}