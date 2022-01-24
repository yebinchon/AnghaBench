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
typedef  int u8 ;
struct si1145_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI1145_REG_PARAM_WR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct si1145_data*,int) ; 

__attribute__((used)) static int FUNC2(struct si1145_data *data, u8 op, u8 param,
			       u8 value)
{
	int ret;

	ret = FUNC0(data->client,
		SI1145_REG_PARAM_WR, value);
	if (ret < 0)
		return ret;

	return FUNC1(data, op | (param & 0x1F));
}