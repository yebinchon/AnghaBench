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
struct ad5272_data {int* buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ad5272_data *data, int reg, int val)
{
	int ret;

	data->buf[0] = (reg << 2) | ((val >> 8) & 0x3);
	data->buf[1] = (u8)val;

	FUNC1(&data->lock);
	ret = FUNC0(data->client, data->buf, sizeof(data->buf));
	FUNC2(&data->lock);
	return ret < 0 ? ret : 0;
}