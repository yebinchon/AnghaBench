#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* max_y; void* max_x; } ;
struct hideep_ts {TYPE_2__ prop; TYPE_1__* client; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,void*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hideep_ts *ts)
{
	__le16 val[2];
	int error;

	error = FUNC3(ts->reg, 0x28, val, FUNC0(val));
	if (error)
		return error;

	ts->prop.max_x = FUNC2(val);
	ts->prop.max_y = FUNC2(val + 1);

	FUNC1(&ts->client->dev, "X: %d, Y: %d",
		ts->prop.max_x, ts->prop.max_y);

	return 0;
}