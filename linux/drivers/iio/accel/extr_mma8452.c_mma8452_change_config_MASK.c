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
struct mma8452_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mma8452_data*) ; 
 int FUNC2 (struct mma8452_data*) ; 
 int FUNC3 (struct mma8452_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mma8452_data *data, u8 reg, u8 val)
{
	int ret;
	int is_active;

	FUNC4(&data->lock);

	is_active = FUNC2(data);
	if (is_active < 0) {
		ret = is_active;
		goto fail;
	}

	/* config can only be changed when in standby */
	if (is_active > 0) {
		ret = FUNC3(data);
		if (ret < 0)
			goto fail;
	}

	ret = FUNC0(data->client, reg, val);
	if (ret < 0)
		goto fail;

	if (is_active > 0) {
		ret = FUNC1(data);
		if (ret < 0)
			goto fail;
	}

	ret = 0;
fail:
	FUNC5(&data->lock);

	return ret;
}