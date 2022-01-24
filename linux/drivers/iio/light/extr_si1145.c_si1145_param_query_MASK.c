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
 int SI1145_CMD_PARAM_QUERY ; 
 int /*<<< orphan*/  SI1145_REG_PARAM_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct si1145_data*,int) ; 

__attribute__((used)) static int FUNC2(struct si1145_data *data, u8 param)
{
	int ret;

	ret = FUNC1(data, SI1145_CMD_PARAM_QUERY | (param & 0x1F));
	if (ret < 0)
		return ret;

	return FUNC0(data->client, SI1145_REG_PARAM_RD);
}