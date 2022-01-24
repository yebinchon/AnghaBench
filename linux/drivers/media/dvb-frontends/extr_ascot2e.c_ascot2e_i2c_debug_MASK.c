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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ascot2e_priv {TYPE_1__* i2c; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ascot2e_priv *priv,
			      u8 reg, u8 write, const u8 *data, u32 len)
{
	FUNC0(&priv->i2c->dev, "ascot2e: I2C %s reg 0x%02x size %d\n",
		(write == 0 ? "read" : "write"), reg, len);
	FUNC1("ascot2e: I2C data: ",
		DUMP_PREFIX_OFFSET, data, len);
}