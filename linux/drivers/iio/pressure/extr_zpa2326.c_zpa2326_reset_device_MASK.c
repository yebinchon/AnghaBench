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
struct zpa2326_private {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZPA2326_CTRL_REG2_REG ; 
 int /*<<< orphan*/  ZPA2326_CTRL_REG2_SWRESET ; 
 int /*<<< orphan*/  ZPA2326_TPUP_USEC_MAX ; 
 int /*<<< orphan*/  ZPA2326_TPUP_USEC_MIN ; 
 scalar_t__ FUNC0 (struct iio_dev const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev const*,char*,int) ; 

__attribute__((used)) static int FUNC5(const struct iio_dev *indio_dev)
{
	int err;

	err = FUNC1(((struct zpa2326_private *)
			    FUNC0(indio_dev))->regmap,
			    ZPA2326_CTRL_REG2_REG, ZPA2326_CTRL_REG2_SWRESET);
	if (err) {
		FUNC4(indio_dev, "failed to reset device (%d)", err);
		return err;
	}

	FUNC2(ZPA2326_TPUP_USEC_MIN, ZPA2326_TPUP_USEC_MAX);

	FUNC3(indio_dev, "reset");

	return 0;
}