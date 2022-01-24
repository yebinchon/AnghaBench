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
struct ssb_sprom {int revision; int /*<<< orphan*/  leddc_off_time; int /*<<< orphan*/  leddc_on_time; int /*<<< orphan*/  alpha2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssb_sprom*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_sprom*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_sprom*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_sprom*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_sprom*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct ssb_sprom *sprom, const char *prefix,
			bool fallback)
{
	FUNC1(sprom, prefix, fallback);
	FUNC0(sprom, prefix, fallback);

	FUNC7(prefix, NULL, "sromrev", &sprom->revision, 0, fallback);

	/* Entries requiring custom functions */
	FUNC5(prefix, "ccode", sprom->alpha2, fallback);
	if (sprom->revision >= 3)
		FUNC6(prefix, "leddc", &sprom->leddc_on_time,
				 &sprom->leddc_off_time, fallback);

	switch (sprom->revision) {
	case 4:
	case 5:
		FUNC3(sprom, prefix, fallback);
		FUNC2(sprom, prefix, fallback);
		break;
	case 8:
	case 9:
		FUNC3(sprom, prefix, fallback);
		break;
	}

	FUNC4(sprom, prefix, fallback);
}