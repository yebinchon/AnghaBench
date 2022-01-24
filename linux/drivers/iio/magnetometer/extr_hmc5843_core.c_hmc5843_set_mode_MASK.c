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
struct hmc5843_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  HMC5843_MODE_MASK ; 
 int /*<<< orphan*/  HMC5843_MODE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct hmc5843_data *data, u8 operating_mode)
{
	int ret;

	FUNC0(&data->lock);
	ret = FUNC2(data->regmap, HMC5843_MODE_REG,
				 HMC5843_MODE_MASK, operating_mode);
	FUNC1(&data->lock);

	return ret;
}