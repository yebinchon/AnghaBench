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
struct stv {int dummy; } ;
struct dtv_frontend_properties {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_EN ; 
 int /*<<< orphan*/  FORCE_CONTINUOUS ; 
 int /*<<< orphan*/  FRAME_MODE ; 
 int /*<<< orphan*/  HYSTERESIS_THRESHOLD ; 
 int /*<<< orphan*/  ISIOBS_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TSDEL_SYNCBYTE ; 
 int /*<<< orphan*/  TSFIFO_EMBINDVB ; 
 int /*<<< orphan*/  TSINS_TOKEN ; 
 int /*<<< orphan*/  TSOUT_NOSYNC ; 
 int /*<<< orphan*/  UPLCCST0 ; 
 int /*<<< orphan*/  FUNC2 (struct stv*,struct dtv_frontend_properties*) ; 

__attribute__((used)) static int FUNC3(struct stv *state,
			     struct dtv_frontend_properties *p)
{
	FUNC0(FORCE_CONTINUOUS, 0);
	FUNC0(FRAME_MODE, 0);
	FUNC0(FILTER_EN, 0);
	FUNC0(TSOUT_NOSYNC, 0);
	FUNC0(TSFIFO_EMBINDVB, 0);
	FUNC0(TSDEL_SYNCBYTE, 0);
	FUNC1(UPLCCST0, 0xe0);
	FUNC0(TSINS_TOKEN, 0);
	FUNC0(HYSTERESIS_THRESHOLD, 0);
	FUNC0(ISIOBS_MODE, 1);

	FUNC2(state, p);
	return 0;
}