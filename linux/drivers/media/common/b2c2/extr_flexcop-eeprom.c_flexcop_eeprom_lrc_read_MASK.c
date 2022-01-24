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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct flexcop_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FC_READ ; 
 scalar_t__ FUNC0 (scalar_t__*,int) ; 
 int FUNC1 (struct flexcop_device*,int /*<<< orphan*/ ,int,scalar_t__*,int,int) ; 

__attribute__((used)) static int FUNC2(struct flexcop_device *fc, u16 addr,
		u8 *buf, u16 len, int retries)
{
	int ret = FUNC1(fc, FC_READ, addr, buf, len, retries);
	if (ret == 0)
		if (FUNC0(buf, len - 1) != buf[len - 1])
			ret = -EINVAL;
	return ret;
}