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
struct iio_dev {int dummy; } ;
struct ads124s_private {scalar_t__ reset_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADS124S08_CMD_RESET ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 struct ads124s_private* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *indio_dev)
{
	struct ads124s_private *priv = FUNC2(indio_dev);

	if (priv->reset_gpio) {
		FUNC1(priv->reset_gpio, 0);
		FUNC3(200);
		FUNC1(priv->reset_gpio, 1);
	} else {
		return FUNC0(indio_dev, ADS124S08_CMD_RESET);
	}

	return 0;
}