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
struct nau7802_state {int last_value; TYPE_1__* client; int /*<<< orphan*/  value_ok; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nau7802_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct nau7802_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct nau7802_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val)
{
	struct nau7802_state *st = FUNC2(indio_dev);
	int ret;

	FUNC6(&st->value_ok);
	FUNC1(st->client->irq);

	FUNC5(st);

	/* read registers to ensure we flush everything */
	ret = FUNC4(st);
	if (ret < 0)
		goto read_chan_info_failure;

	/* Wait for a conversion to finish */
	ret = FUNC7(&st->value_ok,
			FUNC3(1000));
	if (ret == 0)
		ret = -ETIMEDOUT;

	if (ret < 0)
		goto read_chan_info_failure;

	FUNC0(st->client->irq);

	*val = st->last_value;

	return IIO_VAL_INT;

read_chan_info_failure:
	FUNC0(st->client->irq);

	return ret;
}