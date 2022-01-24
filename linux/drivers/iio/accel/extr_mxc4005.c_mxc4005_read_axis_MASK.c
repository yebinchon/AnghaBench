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
struct mxc4005_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct mxc4005_data *data,
			     unsigned int addr)
{
	__be16 reg;
	int ret;

	ret = FUNC2(data->regmap, addr, (u8 *) &reg, sizeof(reg));
	if (ret < 0) {
		FUNC1(data->dev, "failed to read reg %02x\n", addr);
		return ret;
	}

	return FUNC0(reg);
}