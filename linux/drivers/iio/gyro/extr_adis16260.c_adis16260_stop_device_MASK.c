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
typedef  int /*<<< orphan*/  u16 ;
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct adis16260 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16260_SLP_CNT ; 
 int /*<<< orphan*/  ADIS16260_SLP_CNT_POWER_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct adis16260* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct adis16260 *adis16260 = FUNC2(indio_dev);
	int ret;
	u16 val = ADIS16260_SLP_CNT_POWER_OFF;

	ret = FUNC0(&adis16260->adis, ADIS16260_SLP_CNT, val);
	if (ret)
		FUNC1(&indio_dev->dev, "problem with turning device off: SLP_CNT");

	return ret;
}