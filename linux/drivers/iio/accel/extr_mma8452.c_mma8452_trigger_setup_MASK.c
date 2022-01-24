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
struct mma8452_data {TYPE_2__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_trigger {int /*<<< orphan*/ * ops; TYPE_1__ dev; } ;
struct iio_dev {struct iio_trigger* trig; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iio_trigger* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mma8452_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*,struct iio_dev*) ; 
 int /*<<< orphan*/  mma8452_trigger_ops ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct mma8452_data *data = FUNC1(indio_dev);
	struct iio_trigger *trig;
	int ret;

	trig = FUNC0(&data->client->dev, "%s-dev%d",
				      indio_dev->name,
				      indio_dev->id);
	if (!trig)
		return -ENOMEM;

	trig->dev.parent = &data->client->dev;
	trig->ops = &mma8452_trigger_ops;
	FUNC3(trig, indio_dev);

	ret = FUNC2(trig);
	if (ret)
		return ret;

	indio_dev->trig = trig;

	return 0;
}