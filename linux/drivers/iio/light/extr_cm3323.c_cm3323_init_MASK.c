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
struct cm3323_data {int reg_conf; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM3323_CMD_CONF ; 
 int CM3323_CONF_AF_BIT ; 
 int CM3323_CONF_SD_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct cm3323_data* FUNC3 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	int ret;
	struct cm3323_data *data = FUNC3(indio_dev);

	ret = FUNC1(data->client, CM3323_CMD_CONF);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_conf\n");
		return ret;
	}

	/* enable sensor and set auto force mode */
	ret &= ~(CM3323_CONF_SD_BIT | CM3323_CONF_AF_BIT);

	ret = FUNC2(data->client, CM3323_CMD_CONF, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_conf\n");
		return ret;
	}

	data->reg_conf = ret;

	return 0;
}