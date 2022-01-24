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
struct us5182d_data {int ga; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int US5182D_GA_RESOLUTION ; 
 int /*<<< orphan*/  US5182D_REG_ADL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct us5182d_data*) ; 

__attribute__((used)) static int FUNC2(struct us5182d_data *data)
{
	int ret;
	unsigned long result;

	ret = FUNC1(data);
	if (ret < 0)
		return ret;

	ret = FUNC0(data->client,
				       US5182D_REG_ADL);
	if (ret < 0)
		return ret;

	result = ret * data->ga / US5182D_GA_RESOLUTION;
	if (result > 0xffff)
		result = 0xffff;

	return result;
}