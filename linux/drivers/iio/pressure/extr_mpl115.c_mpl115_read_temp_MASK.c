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
struct mpl115_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MPL115_TADC ; 
 int FUNC0 (struct mpl115_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mpl115_data *data)
{
	int ret;

	FUNC1(&data->lock);
	ret = FUNC0(data);
	if (ret < 0)
		goto done;
	ret = data->ops->read(data->dev, MPL115_TADC);
done:
	FUNC2(&data->lock);
	return ret;
}