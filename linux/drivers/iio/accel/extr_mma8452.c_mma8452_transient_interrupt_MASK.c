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
struct mma8452_data {int /*<<< orphan*/  client; } ;
struct iio_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  IIO_ACCEL ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_MAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_MOD_X ; 
 int /*<<< orphan*/  IIO_MOD_Y ; 
 int /*<<< orphan*/  IIO_MOD_Z ; 
 int /*<<< orphan*/  MMA8452_TRANSIENT_SRC ; 
 int MMA8452_TRANSIENT_SRC_XTRANSE ; 
 int MMA8452_TRANSIENT_SRC_YTRANSE ; 
 int MMA8452_TRANSIENT_SRC_ZTRANSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct mma8452_data* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iio_dev *indio_dev)
{
	struct mma8452_data *data = FUNC3(indio_dev);
	s64 ts = FUNC2(indio_dev);
	int src;

	src = FUNC1(data->client, MMA8452_TRANSIENT_SRC);
	if (src < 0)
		return;

	if (src & MMA8452_TRANSIENT_SRC_XTRANSE)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL, 0, IIO_MOD_X,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       ts);

	if (src & MMA8452_TRANSIENT_SRC_YTRANSE)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL, 0, IIO_MOD_Y,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       ts);

	if (src & MMA8452_TRANSIENT_SRC_ZTRANSE)
		FUNC4(indio_dev,
			       FUNC0(IIO_ACCEL, 0, IIO_MOD_Z,
						  IIO_EV_TYPE_MAG,
						  IIO_EV_DIR_RISING),
			       ts);
}