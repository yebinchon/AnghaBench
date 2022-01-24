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
struct vmw_resource {scalar_t__ pin_count; struct vmw_buffer_object* backup; struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  reservation_sem; int /*<<< orphan*/  cmdbuf_mutex; } ;
struct vmw_buffer_object {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vmw_buffer_object*,int) ; 
 int FUNC8 (struct vmw_resource*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_resource*,int,int,int,int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct vmw_resource *res)
{
	struct vmw_private *dev_priv = res->dev_priv;
	int ret;

	(void) FUNC5(&dev_priv->reservation_sem, false);
	FUNC1(&dev_priv->cmdbuf_mutex);

	ret = FUNC8(res, false, true);
	FUNC0(ret);

	FUNC0(res->pin_count == 0);
	if (--res->pin_count == 0 && res->backup) {
		struct vmw_buffer_object *vbo = res->backup;

		(void) FUNC3(&vbo->base, false, false, NULL);
		FUNC7(vbo, false);
		FUNC4(&vbo->base);
	}

	FUNC9(res, false, false, false, NULL, 0UL);

	FUNC2(&dev_priv->cmdbuf_mutex);
	FUNC6(&dev_priv->reservation_sem);
}