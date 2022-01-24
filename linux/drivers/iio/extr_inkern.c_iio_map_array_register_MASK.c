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
struct iio_map_internal {int /*<<< orphan*/  l; struct iio_dev* indio_dev; struct iio_map* map; } ;
struct iio_map {int /*<<< orphan*/ * consumer_dev_name; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  iio_map_list ; 
 int /*<<< orphan*/  iio_map_list_lock ; 
 struct iio_map_internal* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iio_dev *indio_dev, struct iio_map *maps)
{
	int i = 0, ret = 0;
	struct iio_map_internal *mapi;

	if (maps == NULL)
		return 0;

	FUNC2(&iio_map_list_lock);
	while (maps[i].consumer_dev_name != NULL) {
		mapi = FUNC0(sizeof(*mapi), GFP_KERNEL);
		if (mapi == NULL) {
			ret = -ENOMEM;
			goto error_ret;
		}
		mapi->map = &maps[i];
		mapi->indio_dev = indio_dev;
		FUNC1(&mapi->l, &iio_map_list);
		i++;
	}
error_ret:
	FUNC3(&iio_map_list_lock);

	return ret;
}