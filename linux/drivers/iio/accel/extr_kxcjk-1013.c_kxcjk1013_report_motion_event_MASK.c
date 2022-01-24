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
struct kxcjk1013_data {int /*<<< orphan*/  timestamp; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_ACCEL ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_X ; 
 int /*<<< orphan*/  IIO_MOD_Y ; 
 int /*<<< orphan*/  IIO_MOD_Z ; 
 int /*<<< orphan*/  KXCJK1013_REG_INT_SRC2 ; 
 int KXCJK1013_REG_INT_SRC2_BIT_XN ; 
 int KXCJK1013_REG_INT_SRC2_BIT_XP ; 
 int KXCJK1013_REG_INT_SRC2_BIT_YN ; 
 int KXCJK1013_REG_INT_SRC2_BIT_YP ; 
 int KXCJK1013_REG_INT_SRC2_BIT_ZN ; 
 int KXCJK1013_REG_INT_SRC2_BIT_ZP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct kxcjk1013_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iio_dev *indio_dev)
{
	struct kxcjk1013_data *data = FUNC3(indio_dev);

	int ret = FUNC2(data->client,
					   KXCJK1013_REG_INT_SRC2);
	if (ret < 0) {
		FUNC1(&data->client->dev, "Error reading reg_int_src2\n");
		return;
	}

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_XN)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_X,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_FALLING),
			       data->timestamp);

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_XP)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_X,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_RISING),
			       data->timestamp);

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_YN)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Y,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_FALLING),
			       data->timestamp);

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_YP)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Y,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_RISING),
			       data->timestamp);

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_ZN)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Z,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_FALLING),
			       data->timestamp);

	if (ret & KXCJK1013_REG_INT_SRC2_BIT_ZP)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL,
						  0,
						  IIO_MOD_Z,
						  IIO_EV_TYPE_THRESH,
						  IIO_EV_DIR_RISING),
			       data->timestamp);
}