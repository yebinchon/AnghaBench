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
struct abituguru_data {int uguru_ready; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU_CMD ; 
 scalar_t__ ABIT_UGURU_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ABIT_UGURU_READY_TIMEOUT ; 
 int ABIT_UGURU_STATUS_INPUT ; 
 int /*<<< orphan*/  ABIT_UGURU_STATUS_READY ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct abituguru_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct abituguru_data *data)
{
	int timeout = ABIT_UGURU_READY_TIMEOUT;

	if (data->uguru_ready)
		return 0;

	/* Reset? / Prepare for next read/write cycle */
	FUNC4(0x00, data->addr + ABIT_UGURU_DATA);

	/* Wait till the uguru is ready */
	if (FUNC1(data, ABIT_UGURU_STATUS_READY)) {
		FUNC0(1,
			"timeout exceeded waiting for ready state\n");
		return -EIO;
	}

	/* Cmd port MUST be read now and should contain 0xAC */
	while (FUNC2(data->addr + ABIT_UGURU_CMD) != 0xAC) {
		timeout--;
		if (timeout == 0) {
			FUNC0(1,
			   "CMD reg does not hold 0xAC after ready command\n");
			return -EIO;
		}
		FUNC3(0);
	}

	/*
	 * After this the ABIT_UGURU_DATA port should contain
	 * ABIT_UGURU_STATUS_INPUT
	 */
	timeout = ABIT_UGURU_READY_TIMEOUT;
	while (FUNC2(data->addr + ABIT_UGURU_DATA) != ABIT_UGURU_STATUS_INPUT) {
		timeout--;
		if (timeout == 0) {
			FUNC0(1,
				"state != more input after ready command\n");
			return -EIO;
		}
		FUNC3(0);
	}

	data->uguru_ready = 1;
	return 0;
}