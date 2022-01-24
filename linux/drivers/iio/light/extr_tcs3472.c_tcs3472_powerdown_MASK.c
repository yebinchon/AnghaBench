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
struct tcs3472_data {int enable; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCS3472_ENABLE ; 
 int TCS3472_ENABLE_AEN ; 
 int TCS3472_ENABLE_PON ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tcs3472_data *data)
{
	int ret;
	u8 enable_mask = TCS3472_ENABLE_AEN | TCS3472_ENABLE_PON;

	FUNC1(&data->lock);

	ret = FUNC0(data->client, TCS3472_ENABLE,
		data->enable & ~enable_mask);
	if (!ret)
		data->enable &= ~enable_mask;

	FUNC2(&data->lock);

	return ret;
}