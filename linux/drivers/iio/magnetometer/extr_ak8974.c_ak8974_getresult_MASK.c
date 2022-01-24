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
struct ak8974 {int /*<<< orphan*/  map; TYPE_1__* i2c; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_DATA_X ; 
 unsigned int AK8974_INT_RANGE ; 
 int /*<<< orphan*/  AK8974_INT_SRC ; 
 int ERANGE ; 
 int FUNC0 (struct ak8974*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct ak8974 *ak8974, __le16 *result)
{
	unsigned int src;
	int ret;

	ret = FUNC0(ak8974);
	if (ret)
		return ret;
	ret = FUNC3(ak8974->map, AK8974_INT_SRC, &src);
	if (ret < 0)
		return ret;

	/* Out of range overflow! Strong magnet close? */
	if (src & AK8974_INT_RANGE) {
		FUNC1(&ak8974->i2c->dev,
			"range overflow in sensor\n");
		return -ERANGE;
	}

	ret = FUNC2(ak8974->map, AK8974_DATA_X, result, 6);
	if (ret)
		return ret;

	return ret;
}