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
typedef  int u8 ;
struct cyapa {int operational; scalar_t__ gen; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  resp_data ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ CYAPA_GEN5 ; 
 scalar_t__ CYAPA_GEN6 ; 
 int /*<<< orphan*/  CYAPA_STATE_GEN5_BL ; 
 int /*<<< orphan*/  CYAPA_STATE_GEN6_BL ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cyapa*,int*,int,int*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa*) ; 
 scalar_t__ FUNC3 (struct cyapa*) ; 
 int FUNC4 (struct cyapa*,int) ; 
 int /*<<< orphan*/  cyapa_sort_pip_application_launch_data ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct cyapa *cyapa)
{
	u8 cmd[] = { 0x04, 0x00, 0x05, 0x00, 0x2F, 0x00, 0x01 };
	u8 resp_data[2];
	int resp_len;
	int error;

	error = FUNC4(cyapa, 500);
	if (error < 0)
		return error;

	/* Already in bootloader mode, Skipping exit. */
	if (FUNC3(cyapa))
		return 0;
	else if (!FUNC2(cyapa))
		return -EINVAL;

	/* Try to dump all buffered report data before any send command. */
	FUNC0(cyapa, NULL, NULL, NULL);

	/*
	 * Send bootloader enter command to trackpad device,
	 * after enter bootloader, the response data is two bytes of 0x00 0x00.
	 */
	resp_len = sizeof(resp_data);
	FUNC5(resp_data, 0, resp_len);
	error = FUNC1(cyapa,
			cmd, sizeof(cmd),
			resp_data, &resp_len,
			5000, cyapa_sort_pip_application_launch_data,
			true);
	if (error || resp_data[0] != 0x00 || resp_data[1] != 0x00)
		return error < 0 ? error : -EAGAIN;

	cyapa->operational = false;
	if (cyapa->gen == CYAPA_GEN5)
		cyapa->state = CYAPA_STATE_GEN5_BL;
	else if (cyapa->gen == CYAPA_GEN6)
		cyapa->state = CYAPA_STATE_GEN6_BL;
	return 0;
}