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
typedef  int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  DIG_UPDATE_LOCATION ; 
 int /*<<< orphan*/  GLOBAL_UPDATE_LOCK_EN ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_EN ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_X ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_Y ; 
 int /*<<< orphan*/  OTG_GLOBAL_CONTROL1 ; 
 int /*<<< orphan*/  OTG_GLOBAL_CONTROL2 ; 
 int /*<<< orphan*/  OTG_H_BLANK_START ; 
 int /*<<< orphan*/  OTG_H_BLANK_START_END ; 
 int /*<<< orphan*/  OTG_V_BLANK_START ; 
 int /*<<< orphan*/  OTG_V_BLANK_START_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t v_blank_start = 0;
	uint32_t h_blank_start = 0;

	FUNC2(OTG_GLOBAL_CONTROL1, MASTER_UPDATE_LOCK_DB_EN, 1);

	FUNC3(OTG_GLOBAL_CONTROL2, GLOBAL_UPDATE_LOCK_EN, 1,
			DIG_UPDATE_LOCATION, 20);

	FUNC1(OTG_V_BLANK_START_END, OTG_V_BLANK_START, &v_blank_start);

	FUNC1(OTG_H_BLANK_START_END, OTG_H_BLANK_START, &h_blank_start);

	FUNC3(OTG_GLOBAL_CONTROL1,
			MASTER_UPDATE_LOCK_DB_X,
			h_blank_start - 200 - 1,
			MASTER_UPDATE_LOCK_DB_Y,
			v_blank_start - 1);
}