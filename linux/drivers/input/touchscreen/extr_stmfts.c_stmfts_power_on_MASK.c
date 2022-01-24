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
typedef  void* u8 ;
struct stmfts_data {TYPE_1__* client; void* config_ver; void* config_id; void* fw_ver; void* chip_ver; void* chip_id; int /*<<< orphan*/  regulators; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  STMFTS_FULL_FORCE_CALIBRATION ; 
 int /*<<< orphan*/  STMFTS_MS_CX_TUNING ; 
 int /*<<< orphan*/  STMFTS_READ_INFO ; 
 int /*<<< orphan*/  STMFTS_SLEEP_IN ; 
 int /*<<< orphan*/  STMFTS_SLEEP_OUT ; 
 int /*<<< orphan*/  STMFTS_SS_CX_TUNING ; 
 int /*<<< orphan*/  STMFTS_SYSTEM_RESET ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct stmfts_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct stmfts_data *sdata)
{
	int err;
	u8 reg[8];

	err = FUNC7(FUNC0(sdata->regulators),
				    sdata->regulators);
	if (err)
		return err;

	/*
	 * The datasheet does not specify the power on time, but considering
	 * that the reset time is < 10ms, I sleep 20ms to be sure
	 */
	FUNC6(20);

	err = FUNC4(sdata->client, STMFTS_READ_INFO,
					    sizeof(reg), reg);
	if (err < 0)
		return err;
	if (err != sizeof(reg))
		return -EIO;

	sdata->chip_id = FUNC1((__be16 *)&reg[6]);
	sdata->chip_ver = reg[0];
	sdata->fw_ver = FUNC1((__be16 *)&reg[2]);
	sdata->config_id = reg[4];
	sdata->config_ver = reg[5];

	FUNC3(sdata->client->irq);

	FUNC6(50);

	err = FUNC8(sdata, STMFTS_SYSTEM_RESET);
	if (err)
		return err;

	err = FUNC8(sdata, STMFTS_SLEEP_OUT);
	if (err)
		return err;

	/* optional tuning */
	err = FUNC8(sdata, STMFTS_MS_CX_TUNING);
	if (err)
		FUNC2(&sdata->client->dev,
			 "failed to perform mutual auto tune: %d\n", err);

	/* optional tuning */
	err = FUNC8(sdata, STMFTS_SS_CX_TUNING);
	if (err)
		FUNC2(&sdata->client->dev,
			 "failed to perform self auto tune: %d\n", err);

	err = FUNC8(sdata, STMFTS_FULL_FORCE_CALIBRATION);
	if (err)
		return err;

	/*
	 * At this point no one is using the touchscreen
	 * and I don't really care about the return value
	 */
	(void) FUNC5(sdata->client, STMFTS_SLEEP_IN);

	return 0;
}