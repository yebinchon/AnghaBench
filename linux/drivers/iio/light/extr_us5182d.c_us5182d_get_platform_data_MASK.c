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
struct us5182d_data {TYPE_1__* client; int /*<<< orphan*/  default_continuous; int /*<<< orphan*/  lower_dark_gain; int /*<<< orphan*/  upper_dark_gain; int /*<<< orphan*/  us5182d_dark_ths; int /*<<< orphan*/  ga; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  US5182D_GA_RESOLUTION ; 
 int /*<<< orphan*/  US5182D_REG_AUTO_HDARK_GAIN_DEFAULT ; 
 int /*<<< orphan*/  US5182D_REG_AUTO_LDARK_GAIN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct us5182d_data* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  us5182d_dark_ths_vals ; 

__attribute__((used)) static void FUNC6(struct iio_dev *indio_dev)
{
	struct us5182d_data *data = FUNC5(indio_dev);

	if (FUNC3(&data->client->dev, "upisemi,glass-coef",
				     &data->ga))
		data->ga = US5182D_GA_RESOLUTION;
	if (FUNC2(&data->client->dev,
					   "upisemi,dark-ths",
					   data->us5182d_dark_ths,
					   FUNC0(us5182d_dark_ths_vals)))
		data->us5182d_dark_ths = us5182d_dark_ths_vals;
	if (FUNC4(&data->client->dev,
				    "upisemi,upper-dark-gain",
				    &data->upper_dark_gain))
		data->upper_dark_gain = US5182D_REG_AUTO_HDARK_GAIN_DEFAULT;
	if (FUNC4(&data->client->dev,
				    "upisemi,lower-dark-gain",
				    &data->lower_dark_gain))
		data->lower_dark_gain = US5182D_REG_AUTO_LDARK_GAIN_DEFAULT;
	data->default_continuous = FUNC1(&data->client->dev,
							     "upisemi,continuous");
}