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
typedef  int u32 ;
struct isl29501_register_desc {scalar_t__ lsb; scalar_t__ msb; } ;
struct isl29501_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  scalar_t__ s32 ;
typedef  enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct isl29501_register_desc* isl29501_registers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct isl29501_private *isl29501,
				  enum isl29501_register_name name,
				  u32 *val)
{
	const struct isl29501_register_desc *reg = &isl29501_registers[name];
	u8 msb = 0, lsb = 0;
	s32 ret;

	FUNC1(&isl29501->lock);
	if (reg->msb) {
		ret = FUNC0(isl29501->client, reg->msb);
		if (ret < 0)
			goto err;
		msb = ret;
	}

	if (reg->lsb) {
		ret = FUNC0(isl29501->client, reg->lsb);
		if (ret < 0)
			goto err;
		lsb = ret;
	}
	FUNC2(&isl29501->lock);

	*val = (msb << 8) + lsb;

	return 0;
err:
	FUNC2(&isl29501->lock);

	return ret;
}