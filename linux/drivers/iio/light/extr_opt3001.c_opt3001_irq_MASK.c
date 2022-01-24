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
struct opt3001 {int result; int result_ready; int /*<<< orphan*/  result_ready_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  ok_to_ignore_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_LIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OPT3001_CONFIGURATION ; 
 int OPT3001_CONFIGURATION_CRF ; 
 int OPT3001_CONFIGURATION_FH ; 
 int OPT3001_CONFIGURATION_FL ; 
 int OPT3001_CONFIGURATION_M_CONTINUOUS ; 
 int OPT3001_CONFIGURATION_M_MASK ; 
 int /*<<< orphan*/  OPT3001_RESULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct opt3001* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *_iio)
{
	struct iio_dev *iio = _iio;
	struct opt3001 *opt = FUNC4(iio);
	int ret;
	bool wake_result_ready_queue = false;

	if (!opt->ok_to_ignore_lock)
		FUNC6(&opt->lock);

	ret = FUNC2(opt->client, OPT3001_CONFIGURATION);
	if (ret < 0) {
		FUNC1(opt->dev, "failed to read register %02x\n",
				OPT3001_CONFIGURATION);
		goto out;
	}

	if ((ret & OPT3001_CONFIGURATION_M_MASK) ==
			OPT3001_CONFIGURATION_M_CONTINUOUS) {
		if (ret & OPT3001_CONFIGURATION_FH)
			FUNC5(iio,
					FUNC0(IIO_LIGHT, 0,
							IIO_EV_TYPE_THRESH,
							IIO_EV_DIR_RISING),
					FUNC3(iio));
		if (ret & OPT3001_CONFIGURATION_FL)
			FUNC5(iio,
					FUNC0(IIO_LIGHT, 0,
							IIO_EV_TYPE_THRESH,
							IIO_EV_DIR_FALLING),
					FUNC3(iio));
	} else if (ret & OPT3001_CONFIGURATION_CRF) {
		ret = FUNC2(opt->client, OPT3001_RESULT);
		if (ret < 0) {
			FUNC1(opt->dev, "failed to read register %02x\n",
					OPT3001_RESULT);
			goto out;
		}
		opt->result = ret;
		opt->result_ready = true;
		wake_result_ready_queue = true;
	}

out:
	if (!opt->ok_to_ignore_lock)
		FUNC7(&opt->lock);

	if (wake_result_ready_queue)
		FUNC8(&opt->result_ready_queue);

	return IRQ_HANDLED;
}