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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  release_ver; int /*<<< orphan*/  product_code; } ;
struct hideep_ts {int fw_size; int nvm_mask; TYPE_2__ dwz_info; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HIDEEP_DWZ_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (struct hideep_ts*) ; 
 int FUNC5 (struct hideep_ts*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct hideep_ts *ts)
{
	u16 product_code;
	int error;

	error = FUNC4(ts);
	if (error)
		return error;

	FUNC6(50);

	error = FUNC5(ts, HIDEEP_DWZ_INFO,
				 (void *)&ts->dwz_info,
				 sizeof(ts->dwz_info) / sizeof(__be32));

	FUNC0(10);
	FUNC6(50);

	if (error) {
		FUNC3(&ts->client->dev,
			"failed to fetch DWZ data: %d\n", error);
		return error;
	}

	product_code = FUNC1(ts->dwz_info.product_code);

	switch (product_code & 0xF0) {
	case 0x40:
		FUNC2(&ts->client->dev, "used crimson IC");
		ts->fw_size = 1024 * 48;
		ts->nvm_mask = 0x00310000;
		break;
	case 0x60:
		FUNC2(&ts->client->dev, "used lime IC");
		ts->fw_size = 1024 * 64;
		ts->nvm_mask = 0x0030027B;
		break;
	default:
		FUNC3(&ts->client->dev, "product code is wrong: %#04x",
			product_code);
		return -EINVAL;
	}

	FUNC2(&ts->client->dev, "firmware release version: %#04x",
		FUNC1(ts->dwz_info.release_ver));

	return 0;
}