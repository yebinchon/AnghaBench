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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_resource {int id; scalar_t__ backup_size; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  used_memory_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	uint32_t submit_size;
	uint8_t *cmd;

	FUNC0(res->id == -1);

	/*
	 * Encode the dma- and surface destroy commands.
	 */

	submit_size = FUNC7();
	cmd = FUNC1(dev_priv, submit_size);
	if (FUNC2(!cmd))
		return -ENOMEM;

	FUNC6(res->id, cmd);
	FUNC3(dev_priv, submit_size);

	/*
	 * Surface memory usage accounting.
	 */

	dev_priv->used_memory_size -= res->backup_size;

	/*
	 * Release the surface ID.
	 */

	FUNC5(res);
	FUNC4(dev_priv);

	return 0;
}