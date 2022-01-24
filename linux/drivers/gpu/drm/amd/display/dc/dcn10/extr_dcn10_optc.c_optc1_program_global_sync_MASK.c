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
struct optc {int vready_offset; int vstartup_start; int vupdate_offset; int vupdate_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct optc* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_VREADY_PARAM ; 
 int /*<<< orphan*/  OTG_VSTARTUP_PARAM ; 
 int /*<<< orphan*/  OTG_VUPDATE_PARAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VREADY_OFFSET ; 
 int /*<<< orphan*/  VSTARTUP_START ; 
 int /*<<< orphan*/  VUPDATE_OFFSET ; 
 int /*<<< orphan*/  VUPDATE_WIDTH ; 

void FUNC4(
		struct timing_generator *optc,
		int vready_offset,
		int vstartup_start,
		int vupdate_offset,
		int vupdate_width)
{
	struct optc *optc1 = FUNC1(optc);

	optc1->vready_offset = vready_offset;
	optc1->vstartup_start = vstartup_start;
	optc1->vupdate_offset = vupdate_offset;
	optc1->vupdate_width = vupdate_width;

	if (optc1->vstartup_start == 0) {
		FUNC0();
		return;
	}

	FUNC2(OTG_VSTARTUP_PARAM, 0,
		VSTARTUP_START, optc1->vstartup_start);

	FUNC3(OTG_VUPDATE_PARAM, 0,
			VUPDATE_OFFSET, optc1->vupdate_offset,
			VUPDATE_WIDTH, optc1->vupdate_width);

	FUNC2(OTG_VREADY_PARAM, 0,
			VREADY_OFFSET, optc1->vready_offset);
}