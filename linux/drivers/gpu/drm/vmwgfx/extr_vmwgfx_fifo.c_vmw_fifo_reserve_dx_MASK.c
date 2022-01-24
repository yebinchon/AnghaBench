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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {scalar_t__ cman; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int SVGA3D_INVALID_ID ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct vmw_private*,int /*<<< orphan*/ ) ; 

void *FUNC4(struct vmw_private *dev_priv, uint32_t bytes,
			  int ctx_id)
{
	void *ret;

	if (dev_priv->cman)
		ret = FUNC2(dev_priv->cman, bytes,
					 ctx_id, false, NULL);
	else if (ctx_id == SVGA3D_INVALID_ID)
		ret = FUNC3(dev_priv, bytes);
	else {
		FUNC1(1, "Command buffer has not been allocated.\n");
		ret = NULL;
	}
	if (FUNC0(ret))
		return NULL;

	return ret;
}