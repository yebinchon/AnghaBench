#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct vcnl4000_data {int /*<<< orphan*/  vcnl4000_lock; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VCNL4000_COMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int,int,int*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct vcnl4000_data *data, u8 req_mask,
				u8 rdy_mask, u8 data_reg, int *val)
{
	int tries = 20;
	__be16 buf;
	int ret;

	FUNC6(&data->vcnl4000_lock);

	ret = FUNC4(data->client, VCNL4000_COMMAND,
					req_mask);
	if (ret < 0)
		goto fail;

	/* wait for data to become ready */
	while (tries--) {
		ret = FUNC2(data->client, VCNL4000_COMMAND);
		if (ret < 0)
			goto fail;
		if (ret & rdy_mask)
			break;
		FUNC5(20); /* measurement takes up to 100 ms */
	}

	if (tries < 0) {
		FUNC1(&data->client->dev,
			"vcnl4000_measure() failed, data not ready\n");
		ret = -EIO;
		goto fail;
	}

	ret = FUNC3(data->client,
		data_reg, sizeof(buf), (u8 *) &buf);
	if (ret < 0)
		goto fail;

	FUNC7(&data->vcnl4000_lock);
	*val = FUNC0(buf);

	return 0;

fail:
	FUNC7(&data->vcnl4000_lock);
	return ret;
}