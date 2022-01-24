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
typedef  int u16 ;
struct opt3001 {scalar_t__ mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int /*<<< orphan*/  OPT3001_CONFIGURATION ; 
 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ; 
 scalar_t__ OPT3001_CONFIGURATION_M_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct opt3001* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct opt3001*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *iio,
		const struct iio_chan_spec *chan, enum iio_event_type type,
		enum iio_event_direction dir, int state)
{
	struct opt3001 *opt = FUNC3(iio);
	int ret;
	u16 mode;
	u16 reg;

	if (state && opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS)
		return 0;

	if (!state && opt->mode == OPT3001_CONFIGURATION_M_SHUTDOWN)
		return 0;

	FUNC4(&opt->lock);

	mode = state ? OPT3001_CONFIGURATION_M_CONTINUOUS
		: OPT3001_CONFIGURATION_M_SHUTDOWN;

	ret = FUNC1(opt->client, OPT3001_CONFIGURATION);
	if (ret < 0) {
		FUNC0(opt->dev, "failed to read register %02x\n",
				OPT3001_CONFIGURATION);
		goto err;
	}

	reg = ret;
	FUNC6(opt, &reg, mode);

	ret = FUNC2(opt->client, OPT3001_CONFIGURATION,
			reg);
	if (ret < 0) {
		FUNC0(opt->dev, "failed to write register %02x\n",
				OPT3001_CONFIGURATION);
		goto err;
	}

err:
	FUNC5(&opt->lock);

	return ret;
}