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
struct mipi_dbi {int (* command ) (struct mipi_dbi*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ;int /*<<< orphan*/  cmdlock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mipi_dbi*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t len)
{
	u8 *cmdbuf;
	int ret;

	/* SPI requires dma-safe buffers */
	cmdbuf = FUNC1(&cmd, 1, GFP_KERNEL);
	if (!cmdbuf)
		return -ENOMEM;

	FUNC2(&dbi->cmdlock);
	ret = dbi->command(dbi, cmdbuf, data, len);
	FUNC3(&dbi->cmdlock);

	FUNC0(cmdbuf);

	return ret;
}