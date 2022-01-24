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
typedef  int /*<<< orphan*/  u8 ;
struct mxt_data {int /*<<< orphan*/  crc_completion; scalar_t__ config_crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXT_CRC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mxt_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mxt_data *data, u8 cmd, u8 value)
{
	/*
	 * On failure, CRC is set to 0 and config will always be
	 * downloaded.
	 */
	data->config_crc = 0;
	FUNC2(&data->crc_completion);

	FUNC0(data, cmd, value, true);

	/*
	 * Wait for crc message. On failure, CRC is set to 0 and config will
	 * always be downloaded.
	 */
	FUNC1(data, &data->crc_completion, MXT_CRC_TIMEOUT);
}