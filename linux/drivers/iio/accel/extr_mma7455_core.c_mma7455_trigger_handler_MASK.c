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
typedef  int /*<<< orphan*/  u8 ;
struct mma7455_data {int /*<<< orphan*/  regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MMA7455_REG_XOUTL ; 
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct mma7455_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mma7455_data*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct mma7455_data *mma7455 = FUNC1(indio_dev);
	u8 buf[16]; /* 3 x 16-bit channels + padding + ts */
	int ret;

	ret = FUNC4(mma7455);
	if (ret)
		goto done;

	ret = FUNC5(mma7455->regmap, MMA7455_REG_XOUTL, buf,
			       sizeof(__le16) * 3);
	if (ret)
		goto done;

	FUNC2(indio_dev, buf,
					   FUNC0(indio_dev));

done:
	FUNC3(indio_dev->trig);

	return IRQ_HANDLED;
}