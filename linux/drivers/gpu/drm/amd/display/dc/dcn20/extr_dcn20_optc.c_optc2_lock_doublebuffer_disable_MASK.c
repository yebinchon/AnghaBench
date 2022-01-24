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
 int /*<<< orphan*/  DIG_UPDATE_LOCATION ; 
 int /*<<< orphan*/  GLOBAL_UPDATE_LOCK_EN ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_EN ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_X ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK_DB_Y ; 
 int /*<<< orphan*/  OTG_GLOBAL_CONTROL1 ; 
 int /*<<< orphan*/  OTG_GLOBAL_CONTROL2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC2(OTG_GLOBAL_CONTROL1,
				MASTER_UPDATE_LOCK_DB_X,
				0,
				MASTER_UPDATE_LOCK_DB_Y,
				0);

	FUNC2(OTG_GLOBAL_CONTROL2, GLOBAL_UPDATE_LOCK_EN, 0,
				DIG_UPDATE_LOCATION, 0);

	FUNC1(OTG_GLOBAL_CONTROL1, MASTER_UPDATE_LOCK_DB_EN, 0);
}