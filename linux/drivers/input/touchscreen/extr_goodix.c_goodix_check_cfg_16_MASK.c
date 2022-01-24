#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct goodix_ts_data {TYPE_1__* client; } ;
struct firmware {int size; int* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int*) ; 

__attribute__((used)) static int FUNC2(struct goodix_ts_data *ts,
			const struct firmware *cfg)
{
	int i, raw_cfg_len = cfg->size - 3;
	u16 check_sum = 0;

	for (i = 0; i < raw_cfg_len; i += 2)
		check_sum += FUNC1(&cfg->data[i]);
	check_sum = (~check_sum) + 1;
	if (check_sum != FUNC1(&cfg->data[raw_cfg_len])) {
		FUNC0(&ts->client->dev,
			"The checksum of the config fw is not correct");
		return -EINVAL;
	}

	if (cfg->data[raw_cfg_len + 2] != 1) {
		FUNC0(&ts->client->dev,
			"Config fw must have Config_Fresh register set");
		return -EINVAL;
	}

	return 0;
}