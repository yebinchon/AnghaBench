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
struct rm3100_data {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RM3100_REG_CMM ; 
 struct rm3100_data* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct rm3100_data *data = FUNC0(indio_dev);

	return FUNC1(data->regmap, RM3100_REG_CMM, 0);
}