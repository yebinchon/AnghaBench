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
struct mipi_dbi {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mipi_dbi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

int FUNC3(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t len)
{
	u8 *buf;
	int ret;

	buf = FUNC1(data, len, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC2(dbi, cmd, buf, len);

	FUNC0(buf);

	return ret;
}