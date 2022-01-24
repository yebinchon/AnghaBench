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
struct iio_dev {int dummy; } ;
struct adjd_s311_data {TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJD_S311_CTRL ; 
 int ADJD_S311_CTRL_GSSR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct adjd_s311_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct adjd_s311_data *data = FUNC3(indio_dev);
	int tries = 10;

	int ret = FUNC2(data->client, ADJD_S311_CTRL,
		ADJD_S311_CTRL_GSSR);
	if (ret < 0)
		return ret;

	while (tries--) {
		ret = FUNC1(data->client, ADJD_S311_CTRL);
		if (ret < 0)
			return ret;
		if (!(ret & ADJD_S311_CTRL_GSSR))
			break;
		FUNC4(20);
	}

	if (tries < 0) {
		FUNC0(&data->client->dev,
			"adjd_s311_req_data() failed, data not ready\n");
		return -EIO;
	}

	return 0;
}