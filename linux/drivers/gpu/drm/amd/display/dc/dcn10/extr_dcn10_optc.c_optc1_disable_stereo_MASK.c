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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_CONTROL ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_EN ; 
 int /*<<< orphan*/  OTG_3D_STRUCTURE_STEREO_SEL_OVR ; 
 int /*<<< orphan*/  OTG_STEREO_CONTROL ; 
 int /*<<< orphan*/  OTG_STEREO_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC1(OTG_STEREO_CONTROL, 0,
		OTG_STEREO_EN, 0);

	FUNC2(OTG_3D_STRUCTURE_CONTROL, 0,
		OTG_3D_STRUCTURE_EN, 0,
		OTG_3D_STRUCTURE_STEREO_SEL_OVR, 0);
}