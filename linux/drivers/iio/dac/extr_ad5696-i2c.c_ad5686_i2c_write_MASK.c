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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i2c_client {int dummy; } ;
struct ad5686_state {TYPE_1__* data; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * d8; int /*<<< orphan*/  d32; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ad5686_state *st,
			    u8 cmd, u8 addr, u16 val)
{
	struct i2c_client *i2c = FUNC4(st->dev);
	int ret;

	st->data[0].d32 = FUNC2(FUNC1(cmd) | FUNC0(addr)
				      | val);

	ret = FUNC3(i2c, &st->data[0].d8[1], 3);
	if (ret < 0)
		return ret;

	return (ret != 3) ? -EIO : 0;
}