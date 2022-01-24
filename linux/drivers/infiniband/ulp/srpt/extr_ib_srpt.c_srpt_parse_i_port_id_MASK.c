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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC5(u8 i_port_id[16], const char *name)
{
	const char *p;
	unsigned len, count, leading_zero_bytes;
	int ret;

	p = name;
	if (FUNC4(p, "0x", 2) == 0)
		p += 2;
	ret = -EINVAL;
	len = FUNC3(p);
	if (len % 2)
		goto out;
	count = FUNC2(len / 2, 16U);
	leading_zero_bytes = 16 - count;
	FUNC1(i_port_id, 0, leading_zero_bytes);
	ret = FUNC0(i_port_id + leading_zero_bytes, p, count);

out:
	return ret;
}