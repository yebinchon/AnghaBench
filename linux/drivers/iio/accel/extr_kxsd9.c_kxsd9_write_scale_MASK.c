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
struct kxsd9_state {int scale; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KXSD9_CTRL_C_FS_MASK ; 
 int /*<<< orphan*/  KXSD9_REG_CTRL_C ; 
 struct kxsd9_state* FUNC0 (struct iio_dev*) ; 
 int* kxsd9_micro_scales ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev, int micro)
{
	int ret, i;
	struct kxsd9_state *st = FUNC0(indio_dev);
	bool foundit = false;

	for (i = 0; i < 4; i++)
		if (micro == kxsd9_micro_scales[i]) {
			foundit = true;
			break;
		}
	if (!foundit)
		return -EINVAL;

	ret = FUNC1(st->map,
				 KXSD9_REG_CTRL_C,
				 KXSD9_CTRL_C_FS_MASK,
				 i);
	if (ret < 0)
		goto error_ret;

	/* Cached scale when the sensor is powered down */
	st->scale = i;

error_ret:
	return ret;
}