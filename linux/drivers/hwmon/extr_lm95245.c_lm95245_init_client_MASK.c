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
struct lm95245_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_STOP ; 
 int /*<<< orphan*/  LM95245_REG_RW_CONFIG1 ; 
 int FUNC0 (struct lm95245_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lm95245_data *data)
{
	int ret;

	ret = FUNC0(data);
	if (ret < 0)
		return ret;

	return FUNC1(data->regmap, LM95245_REG_RW_CONFIG1,
				  CFG_STOP, 0);
}