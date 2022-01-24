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
struct iio_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/ * buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf,
				       size_t len)
{
	int ret;
	bool requested_state;
	struct iio_dev *indio_dev = FUNC1(dev);
	bool inlist;

	ret = FUNC5(buf, &requested_state);
	if (ret < 0)
		return ret;

	FUNC3(&indio_dev->mlock);

	/* Find out if it is in the list */
	inlist = FUNC2(indio_dev->buffer);
	/* Already in desired state */
	if (inlist == requested_state)
		goto done;

	if (requested_state)
		ret = FUNC0(indio_dev,
					 indio_dev->buffer, NULL);
	else
		ret = FUNC0(indio_dev,
					 NULL, indio_dev->buffer);

done:
	FUNC4(&indio_dev->mlock);
	return (ret < 0) ? ret : len;
}