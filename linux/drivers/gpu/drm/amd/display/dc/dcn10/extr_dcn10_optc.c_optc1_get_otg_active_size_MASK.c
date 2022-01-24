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
typedef  scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_CONTROL ; 
 int /*<<< orphan*/  OTG_H_BLANK_END ; 
 int /*<<< orphan*/  OTG_H_BLANK_START ; 
 int /*<<< orphan*/  OTG_H_BLANK_START_END ; 
 int /*<<< orphan*/  OTG_MASTER_EN ; 
 int /*<<< orphan*/  OTG_V_BLANK_END ; 
 int /*<<< orphan*/  OTG_V_BLANK_START ; 
 int /*<<< orphan*/  OTG_V_BLANK_START_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 

bool FUNC3(struct timing_generator *optc,
		uint32_t *otg_active_width,
		uint32_t *otg_active_height)
{
	uint32_t otg_enabled;
	uint32_t v_blank_start;
	uint32_t v_blank_end;
	uint32_t h_blank_start;
	uint32_t h_blank_end;
	struct optc *optc1 = FUNC0(optc);


	FUNC1(OTG_CONTROL,
			OTG_MASTER_EN, &otg_enabled);

	if (otg_enabled == 0)
		return false;

	FUNC2(OTG_V_BLANK_START_END,
			OTG_V_BLANK_START, &v_blank_start,
			OTG_V_BLANK_END, &v_blank_end);

	FUNC2(OTG_H_BLANK_START_END,
			OTG_H_BLANK_START, &h_blank_start,
			OTG_H_BLANK_END, &h_blank_end);

	*otg_active_width = v_blank_start - v_blank_end;
	*otg_active_height = h_blank_start - h_blank_end;
	return true;
}