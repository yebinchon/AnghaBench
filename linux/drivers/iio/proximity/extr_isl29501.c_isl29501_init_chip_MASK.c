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
struct isl29501_private {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ISL29501_DEVICE_ID ; 
 int ISL29501_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct isl29501_private*) ; 
 int FUNC3 (struct isl29501_private*) ; 

__attribute__((used)) static int FUNC4(struct isl29501_private *isl29501)
{
	int ret;

	ret = FUNC1(isl29501->client, ISL29501_DEVICE_ID);
	if (ret < 0) {
		FUNC0(&isl29501->client->dev, "Error reading device id\n");
		return ret;
	}

	if (ret != ISL29501_ID) {
		FUNC0(&isl29501->client->dev,
			"Wrong chip id, got %x expected %x\n",
			ret, ISL29501_DEVICE_ID);
		return -ENODEV;
	}

	ret = FUNC3(isl29501);
	if (ret < 0)
		return ret;

	return FUNC2(isl29501);
}