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
struct vmw_private {int dummy; } ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_2__ {struct vmw_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_SYNC_GENERIC ; 
 TYPE_1__* FUNC0 (struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 

void FUNC2(struct vmw_fence_obj *fence)
{
	struct vmw_private *dev_priv = FUNC0(fence)->dev_priv;

	FUNC1(dev_priv, SVGA_SYNC_GENERIC);
}