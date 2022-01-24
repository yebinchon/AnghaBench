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
struct mpl3115_data {int ctrl_reg1; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int MPL3115_CTRL_OST ; 
 int /*<<< orphan*/  MPL3115_CTRL_REG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mpl3115_data *data)
{
	int ret, tries = 15;

	/* trigger measurement */
	ret = FUNC2(data->client, MPL3115_CTRL_REG1,
		data->ctrl_reg1 | MPL3115_CTRL_OST);
	if (ret < 0)
		return ret;

	while (tries-- > 0) {
		ret = FUNC1(data->client, MPL3115_CTRL_REG1);
		if (ret < 0)
			return ret;
		/* wait for data ready, i.e. OST cleared */
		if (!(ret & MPL3115_CTRL_OST))
			break;
		FUNC3(20);
	}

	if (tries < 0) {
		FUNC0(&data->client->dev, "data not ready\n");
		return -EIO;
	}

	return 0;
}