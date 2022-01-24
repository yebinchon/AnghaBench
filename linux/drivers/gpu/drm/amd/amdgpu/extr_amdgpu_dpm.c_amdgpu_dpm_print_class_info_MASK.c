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

/* Variables and functions */
 int ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2 ; 
 int ATOM_PPLIB_CLASSIFICATION2_MVC ; 
 int ATOM_PPLIB_CLASSIFICATION2_ULV ; 
 int ATOM_PPLIB_CLASSIFICATION_3DLOW ; 
 int ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE ; 
 int ATOM_PPLIB_CLASSIFICATION_ACPI ; 
 int ATOM_PPLIB_CLASSIFICATION_BOOT ; 
 int ATOM_PPLIB_CLASSIFICATION_FORCED ; 
 int ATOM_PPLIB_CLASSIFICATION_HD2STATE ; 
 int ATOM_PPLIB_CLASSIFICATION_HDSTATE ; 
 int ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE ; 
 int ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE ; 
 int ATOM_PPLIB_CLASSIFICATION_REST ; 
 int ATOM_PPLIB_CLASSIFICATION_SDSTATE ; 
 int ATOM_PPLIB_CLASSIFICATION_THERMAL ; 
#define  ATOM_PPLIB_CLASSIFICATION_UI_BALANCED 131 
#define  ATOM_PPLIB_CLASSIFICATION_UI_BATTERY 130 
 int ATOM_PPLIB_CLASSIFICATION_UI_MASK ; 
#define  ATOM_PPLIB_CLASSIFICATION_UI_NONE 129 
#define  ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE 128 
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(u32 class, u32 class2)
{
	const char *s;

	switch (class & ATOM_PPLIB_CLASSIFICATION_UI_MASK) {
	case ATOM_PPLIB_CLASSIFICATION_UI_NONE:
	default:
		s = "none";
		break;
	case ATOM_PPLIB_CLASSIFICATION_UI_BATTERY:
		s = "battery";
		break;
	case ATOM_PPLIB_CLASSIFICATION_UI_BALANCED:
		s = "balanced";
		break;
	case ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE:
		s = "performance";
		break;
	}
	FUNC1("\tui class: %s\n", s);
	FUNC1("\tinternal class:");
	if (((class & ~ATOM_PPLIB_CLASSIFICATION_UI_MASK) == 0) &&
	    (class2 == 0))
		FUNC0(" none");
	else {
		if (class & ATOM_PPLIB_CLASSIFICATION_BOOT)
			FUNC0(" boot");
		if (class & ATOM_PPLIB_CLASSIFICATION_THERMAL)
			FUNC0(" thermal");
		if (class & ATOM_PPLIB_CLASSIFICATION_LIMITEDPOWERSOURCE)
			FUNC0(" limited_pwr");
		if (class & ATOM_PPLIB_CLASSIFICATION_REST)
			FUNC0(" rest");
		if (class & ATOM_PPLIB_CLASSIFICATION_FORCED)
			FUNC0(" forced");
		if (class & ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE)
			FUNC0(" 3d_perf");
		if (class & ATOM_PPLIB_CLASSIFICATION_OVERDRIVETEMPLATE)
			FUNC0(" ovrdrv");
		if (class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
			FUNC0(" uvd");
		if (class & ATOM_PPLIB_CLASSIFICATION_3DLOW)
			FUNC0(" 3d_low");
		if (class & ATOM_PPLIB_CLASSIFICATION_ACPI)
			FUNC0(" acpi");
		if (class & ATOM_PPLIB_CLASSIFICATION_HD2STATE)
			FUNC0(" uvd_hd2");
		if (class & ATOM_PPLIB_CLASSIFICATION_HDSTATE)
			FUNC0(" uvd_hd");
		if (class & ATOM_PPLIB_CLASSIFICATION_SDSTATE)
			FUNC0(" uvd_sd");
		if (class2 & ATOM_PPLIB_CLASSIFICATION2_LIMITEDPOWERSOURCE_2)
			FUNC0(" limited_pwr2");
		if (class2 & ATOM_PPLIB_CLASSIFICATION2_ULV)
			FUNC0(" ulv");
		if (class2 & ATOM_PPLIB_CLASSIFICATION2_MVC)
			FUNC0(" uvd_mvc");
	}
	FUNC0("\n");
}