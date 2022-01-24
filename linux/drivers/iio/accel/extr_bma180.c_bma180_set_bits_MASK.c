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
struct bma180_data {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct bma180_data *data, u8 reg, u8 mask, u8 val)
{
	int ret = FUNC1(data->client, reg);
	u8 reg_val = (ret & ~mask) | (val << (FUNC0(mask) - 1));

	if (ret < 0)
		return ret;

	return FUNC2(data->client, reg, reg_val);
}