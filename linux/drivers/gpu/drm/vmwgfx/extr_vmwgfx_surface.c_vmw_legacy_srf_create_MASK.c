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
struct vmw_surface {int dummy; } ;
struct vmw_resource {int id; scalar_t__ backup_size; struct vmw_private* dev_priv; } ;
struct vmw_private {scalar_t__ used_memory_size; scalar_t__ memory_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int SVGA3D_MAX_SURFACE_IDS ; 
 int /*<<< orphan*/ * FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmw_private*) ; 
 struct vmw_surface* FUNC6 (struct vmw_resource*) ; 
 int FUNC7 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_surface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_surface*) ; 

__attribute__((used)) static int FUNC11(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	struct vmw_surface *srf;
	uint32_t submit_size;
	uint8_t *cmd;
	int ret;

	if (FUNC2(res->id != -1))
		return 0;

	srf = FUNC6(res);
	if (FUNC3(dev_priv->used_memory_size + res->backup_size >=
		     dev_priv->memory_size))
		return -EBUSY;

	/*
	 * Alloc id for the resource.
	 */

	ret = FUNC7(res);
	if (FUNC3(ret != 0)) {
		FUNC0("Failed to allocate a surface id.\n");
		goto out_no_id;
	}

	if (FUNC3(res->id >= SVGA3D_MAX_SURFACE_IDS)) {
		ret = -EBUSY;
		goto out_no_fifo;
	}

	/*
	 * Encode surface define- commands.
	 */

	submit_size = FUNC10(srf);
	cmd = FUNC1(dev_priv, submit_size);
	if (FUNC3(!cmd)) {
		ret = -ENOMEM;
		goto out_no_fifo;
	}

	FUNC9(srf, cmd);
	FUNC4(dev_priv, submit_size);
	FUNC5(dev_priv);

	/*
	 * Surface memory usage accounting.
	 */

	dev_priv->used_memory_size += res->backup_size;
	return 0;

out_no_fifo:
	FUNC8(res);
out_no_id:
	return ret;
}