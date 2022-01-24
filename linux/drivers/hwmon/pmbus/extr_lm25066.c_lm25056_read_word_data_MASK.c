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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  LM25056_VAUX_OV_WARN_LIMIT ; 
 int /*<<< orphan*/  LM25056_VAUX_UV_WARN_LIMIT ; 
#define  PMBUS_VIRT_VMON_OV_WARN_LIMIT 129 
#define  PMBUS_VIRT_VMON_UV_WARN_LIMIT 128 
 int FUNC1 (struct i2c_client*,int,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, int page, int reg)
{
	int ret;

	switch (reg) {
	case PMBUS_VIRT_VMON_UV_WARN_LIMIT:
		ret = FUNC2(client, 0,
					   LM25056_VAUX_UV_WARN_LIMIT);
		if (ret < 0)
			break;
		/* Adjust returned value to match VIN coefficients */
		ret = FUNC0(ret * 293, 6140);
		break;
	case PMBUS_VIRT_VMON_OV_WARN_LIMIT:
		ret = FUNC2(client, 0,
					   LM25056_VAUX_OV_WARN_LIMIT);
		if (ret < 0)
			break;
		/* Adjust returned value to match VIN coefficients */
		ret = FUNC0(ret * 293, 6140);
		break;
	default:
		ret = FUNC1(client, page, reg);
		break;
	}
	return ret;
}