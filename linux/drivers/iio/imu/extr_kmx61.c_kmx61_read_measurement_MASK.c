#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(struct kmx61_data *data, u8 base, u8 offset)
{
	int ret;
	u8 reg = base + offset * 2;

	ret = FUNC1(data->client, reg);
	if (ret < 0)
		FUNC0(&data->client->dev, "failed to read reg at %x\n", reg);

	return ret;
}