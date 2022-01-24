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
struct si7005_data {int config; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SI7005_CONFIG ; 
 int SI7005_CONFIG_START ; 
 int SI7005_CONFIG_TEMP ; 
 int /*<<< orphan*/  SI7005_DATA ; 
 int /*<<< orphan*/  SI7005_STATUS ; 
 int SI7005_STATUS_NRDY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct si7005_data *data, bool temp)
{
	int tries = 50;
	int ret;

	FUNC4(&data->lock);

	ret = FUNC2(data->client, SI7005_CONFIG,
		data->config | SI7005_CONFIG_START |
		(temp ? SI7005_CONFIG_TEMP : 0));
	if (ret < 0)
		goto done;

	while (tries-- > 0) {
		FUNC3(20);
		ret = FUNC0(data->client, SI7005_STATUS);
		if (ret < 0)
			goto done;
		if (!(ret & SI7005_STATUS_NRDY))
			break;
	}
	if (tries < 0) {
		ret = -EIO;
		goto done;
	}

	ret = FUNC1(data->client, SI7005_DATA);

done:
	FUNC5(&data->lock);

	return ret;
}