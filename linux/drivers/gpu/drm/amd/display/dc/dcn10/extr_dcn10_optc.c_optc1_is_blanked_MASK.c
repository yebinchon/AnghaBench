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
 int /*<<< orphan*/  OTG_BLANK_CONTROL ; 
 int /*<<< orphan*/  OTG_BLANK_DATA_EN ; 
 int /*<<< orphan*/  OTG_CURRENT_BLANK_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 

bool FUNC2(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t blank_en;
	uint32_t blank_state;

	FUNC1(OTG_BLANK_CONTROL,
			OTG_BLANK_DATA_EN, &blank_en,
			OTG_CURRENT_BLANK_STATE, &blank_state);

	return blank_en && blank_state;
}