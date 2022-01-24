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
struct vmw_cmdbuf_man {int /*<<< orphan*/  error_mutex; int /*<<< orphan*/  space_mutex; int /*<<< orphan*/  cur_mutex; int /*<<< orphan*/  headers; int /*<<< orphan*/  dheaders; int /*<<< orphan*/  work; TYPE_1__* dev_priv; int /*<<< orphan*/  has_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 int /*<<< orphan*/  SVGA_IRQFLAG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_cmdbuf_man*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vmw_cmdbuf_man*,int,int) ; 
 scalar_t__ FUNC7 (struct vmw_cmdbuf_man*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct vmw_cmdbuf_man *man)
{
	FUNC1(man->has_pool);
	(void) FUNC6(man, false, 10*HZ);

	if (FUNC7(man, 0, false))
		FUNC0("Failed stopping command buffer contexts.\n");

	FUNC8(man->dev_priv, SVGA_IRQFLAG_ERROR,
				  &man->dev_priv->error_waiters);
	(void) FUNC2(&man->work);
	FUNC3(man->dheaders);
	FUNC3(man->headers);
	FUNC5(&man->cur_mutex);
	FUNC5(&man->space_mutex);
	FUNC5(&man->error_mutex);
	FUNC4(man);
}