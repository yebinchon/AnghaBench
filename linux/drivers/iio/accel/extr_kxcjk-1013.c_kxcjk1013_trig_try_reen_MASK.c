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
struct kxcjk1013_data {TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KXCJK1013_REG_INT_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct kxcjk1013_data* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig)
{
	struct iio_dev *indio_dev = FUNC3(trig);
	struct kxcjk1013_data *data = FUNC2(indio_dev);
	int ret;

	ret = FUNC1(data->client, KXCJK1013_REG_INT_REL);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_int_rel\n");
		return ret;
	}

	return 0;
}