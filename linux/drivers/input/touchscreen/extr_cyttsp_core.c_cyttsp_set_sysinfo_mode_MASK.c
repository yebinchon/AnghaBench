#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tts_verl; int /*<<< orphan*/  tts_verh; } ;
struct cyttsp {TYPE_1__ sysinfo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CY_DELAY_DFLT ; 
 int /*<<< orphan*/  CY_REG_BASE ; 
 int /*<<< orphan*/  CY_SYSINFO_MODE ; 
 int EIO ; 
 int FUNC0 (struct cyttsp*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cyttsp*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int FUNC4 (struct cyttsp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cyttsp *ts)
{
	int error;

	FUNC1(&ts->sysinfo_data, 0, sizeof(ts->sysinfo_data));

	/* switch to sysinfo mode */
	error = FUNC4(ts, CY_SYSINFO_MODE);
	if (error)
		return error;

	/* read sysinfo registers */
	FUNC2(CY_DELAY_DFLT);
	error = FUNC3(ts, CY_REG_BASE, sizeof(ts->sysinfo_data),
				      &ts->sysinfo_data);
	if (error)
		return error;

	error = FUNC0(ts);
	if (error)
		return error;

	if (!ts->sysinfo_data.tts_verh && !ts->sysinfo_data.tts_verl)
		return -EIO;

	return 0;
}