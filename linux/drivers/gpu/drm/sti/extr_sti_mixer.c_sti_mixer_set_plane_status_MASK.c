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
struct sti_plane {int dummy; } ;
struct sti_mixer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GAM_MIXER_CTL ; 
 int /*<<< orphan*/  FUNC2 (struct sti_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct sti_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_mixer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sti_mixer*) ; 
 int /*<<< orphan*/  FUNC6 (struct sti_plane*) ; 

int FUNC7(struct sti_mixer *mixer,
			       struct sti_plane *plane, bool status)
{
	u32 mask, val;

	FUNC0("%s %s %s\n", status ? "enable" : "disable",
			 FUNC5(mixer), FUNC6(plane));

	mask = FUNC2(plane);
	if (!mask) {
		FUNC1("Can't find layer mask\n");
		return -EINVAL;
	}

	val = FUNC3(mixer, GAM_MIXER_CTL);
	val &= ~mask;
	val |= status ? mask : 0;
	FUNC4(mixer, GAM_MIXER_CTL, val);

	return 0;
}