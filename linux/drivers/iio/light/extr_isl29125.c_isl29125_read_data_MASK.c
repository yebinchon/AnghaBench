#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct isl29125_data {int conf1; TYPE_2__* client; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int mode; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ISL29125_CONF1 ; 
 int /*<<< orphan*/  ISL29125_STATUS ; 
 int ISL29125_STATUS_CONV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* isl29125_regs ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct isl29125_data *data, int si)
{
	int tries = 5;
	int ret;

	ret = FUNC3(data->client, ISL29125_CONF1,
		data->conf1 | isl29125_regs[si].mode);
	if (ret < 0)
		return ret;

	FUNC4(101);

	while (tries--) {
		ret = FUNC1(data->client, ISL29125_STATUS);
		if (ret < 0)
			goto fail;
		if (ret & ISL29125_STATUS_CONV)
			break;
		FUNC4(20);
	}

	if (tries < 0) {
		FUNC0(&data->client->dev, "data not ready\n");
		ret = -EIO;
		goto fail;
	}

	ret = FUNC2(data->client, isl29125_regs[si].data);

fail:
	FUNC3(data->client, ISL29125_CONF1, data->conf1);
	return ret;
}