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
struct abituguru3_data {scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ ABIT_UGURU3_CMD ; 
 scalar_t__ ABIT_UGURU3_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ABIT_UGURU3_SUCCESS ; 
 int ABIT_UGURU3_SYNCHRONIZE_TIMEOUT ; 
 int EIO ; 
 int FUNC1 (struct abituguru3_data*) ; 
 int FUNC2 (struct abituguru3_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct abituguru3_data *data)
{
	int x, timeout = ABIT_UGURU3_SYNCHRONIZE_TIMEOUT;

	x = FUNC2(data);
	if (x != ABIT_UGURU3_SUCCESS) {
		FUNC0("synchronize timeout during initial busy "
			"wait, status: 0x%02x\n", x);
		return -EIO;
	}

	FUNC5(0x20, data->addr + ABIT_UGURU3_DATA);
	x = FUNC2(data);
	if (x != ABIT_UGURU3_SUCCESS) {
		FUNC0("synchronize timeout after sending 0x20, "
			"status: 0x%02x\n", x);
		return -EIO;
	}

	FUNC5(0x10, data->addr + ABIT_UGURU3_CMD);
	x = FUNC2(data);
	if (x != ABIT_UGURU3_SUCCESS) {
		FUNC0("synchronize timeout after sending 0x10, "
			"status: 0x%02x\n", x);
		return -EIO;
	}

	FUNC5(0x00, data->addr + ABIT_UGURU3_CMD);
	x = FUNC2(data);
	if (x != ABIT_UGURU3_SUCCESS) {
		FUNC0("synchronize timeout after sending 0x00, "
			"status: 0x%02x\n", x);
		return -EIO;
	}

	x = FUNC1(data);
	if (x != ABIT_UGURU3_SUCCESS) {
		FUNC0("synchronize timeout waiting for read, "
			"status: 0x%02x\n", x);
		return -EIO;
	}

	while ((x = FUNC3(data->addr + ABIT_UGURU3_CMD)) != 0xAC) {
		timeout--;
		if (timeout == 0) {
			FUNC0("synchronize timeout cmd does not "
				"hold 0xAC after synchronize, cmd: 0x%02x\n",
				x);
			return -EIO;
		}
		FUNC4(1);
	}
	return 0;
}