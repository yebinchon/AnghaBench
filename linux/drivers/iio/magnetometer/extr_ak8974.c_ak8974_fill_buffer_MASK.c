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
struct iio_dev {int dummy; } ;
struct ak8974 {TYPE_1__* i2c; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ak8974*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ak8974*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ak8974* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iio_dev *indio_dev)
{
	struct ak8974 *ak8974 = FUNC4(indio_dev);
	int ret;
	__le16 hw_values[8]; /* Three axes + 64bit padding */

	FUNC8(&ak8974->i2c->dev);
	FUNC6(&ak8974->lock);

	ret = FUNC1(ak8974);
	if (ret) {
		FUNC2(&ak8974->i2c->dev, "error triggering measure\n");
		goto out_unlock;
	}
	ret = FUNC0(ak8974, hw_values);
	if (ret) {
		FUNC2(&ak8974->i2c->dev, "error getting measures\n");
		goto out_unlock;
	}

	FUNC5(indio_dev, hw_values,
					   FUNC3(indio_dev));

 out_unlock:
	FUNC7(&ak8974->lock);
	FUNC9(&ak8974->i2c->dev);
	FUNC10(&ak8974->i2c->dev);
}