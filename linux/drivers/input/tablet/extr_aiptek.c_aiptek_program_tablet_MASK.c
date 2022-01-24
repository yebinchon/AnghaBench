#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ coordinateMode; } ;
struct TYPE_3__ {int modelCode; int odmCode; int firmwareCode; } ;
struct aiptek {scalar_t__ eventCount; int /*<<< orphan*/  diagnostic; TYPE_2__ curSetting; int /*<<< orphan*/  inputdev; TYPE_1__ features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 scalar_t__ AIPTEK_COORDINATE_ABSOLUTE_MODE ; 
 int /*<<< orphan*/  AIPTEK_DIAGNOSTIC_NA ; 
 int FUNC0 (struct aiptek*,int,int) ; 
 int FUNC1 (struct aiptek*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct aiptek *aiptek)
{
	int ret;
	/* Execute Resolution500LPI */
	if ((ret = FUNC0(aiptek, 0x18, 0x04)) < 0)
		return ret;

	/* Query getModelCode */
	if ((ret = FUNC1(aiptek, 0x02, 0x00)) < 0)
		return ret;
	aiptek->features.modelCode = ret & 0xff;

	/* Query getODMCode */
	if ((ret = FUNC1(aiptek, 0x03, 0x00)) < 0)
		return ret;
	aiptek->features.odmCode = ret;

	/* Query getFirmwareCode */
	if ((ret = FUNC1(aiptek, 0x04, 0x00)) < 0)
		return ret;
	aiptek->features.firmwareCode = ret;

	/* Query getXextension */
	if ((ret = FUNC1(aiptek, 0x01, 0x00)) < 0)
		return ret;
	FUNC2(aiptek->inputdev, ABS_X, 0, ret - 1, 0, 0);

	/* Query getYextension */
	if ((ret = FUNC1(aiptek, 0x01, 0x01)) < 0)
		return ret;
	FUNC2(aiptek->inputdev, ABS_Y, 0, ret - 1, 0, 0);

	/* Query getPressureLevels */
	if ((ret = FUNC1(aiptek, 0x08, 0x00)) < 0)
		return ret;
	FUNC2(aiptek->inputdev, ABS_PRESSURE, 0, ret - 1, 0, 0);

	/* Depending on whether we are in absolute or relative mode, we will
	 * do a switchToTablet(absolute) or switchToMouse(relative) command.
	 */
	if (aiptek->curSetting.coordinateMode ==
	    AIPTEK_COORDINATE_ABSOLUTE_MODE) {
		/* Execute switchToTablet */
		if ((ret = FUNC0(aiptek, 0x10, 0x01)) < 0) {
			return ret;
		}
	} else {
		/* Execute switchToMouse */
		if ((ret = FUNC0(aiptek, 0x10, 0x00)) < 0) {
			return ret;
		}
	}

	/* Enable the macro keys */
	if ((ret = FUNC0(aiptek, 0x11, 0x02)) < 0)
		return ret;
#if 0
	/* Execute FilterOn */
	if ((ret = aiptek_command(aiptek, 0x17, 0x00)) < 0)
		return ret;
#endif

	/* Execute AutoGainOn */
	if ((ret = FUNC0(aiptek, 0x12, 0xff)) < 0)
		return ret;

	/* Reset the eventCount, so we track events from last (re)programming
	 */
	aiptek->diagnostic = AIPTEK_DIAGNOSTIC_NA;
	aiptek->eventCount = 0;

	return 0;
}