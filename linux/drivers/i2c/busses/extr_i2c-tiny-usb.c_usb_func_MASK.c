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
typedef  scalar_t__ u32 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_FUNC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u32 FUNC5(struct i2c_adapter *adapter)
{
	__le32 *pfunc;
	u32 ret;

	pfunc = FUNC2(sizeof(*pfunc), GFP_KERNEL);

	/* get functionality from adapter */
	if (!pfunc || FUNC4(adapter, CMD_GET_FUNC, 0, 0, pfunc,
			       sizeof(*pfunc)) != sizeof(*pfunc)) {
		FUNC0(&adapter->dev, "failure reading functionality\n");
		ret = 0;
		goto out;
	}

	ret = FUNC3(pfunc);
out:
	FUNC1(pfunc);
	return ret;
}