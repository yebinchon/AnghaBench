#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vmw_private {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct vmw_framebuffer {TYPE_4__ base; scalar_t__ bo; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_11__ {struct vmw_buffer_object* buffer; } ;
struct TYPE_9__ {TYPE_2__* surface; } ;
struct TYPE_7__ {struct vmw_buffer_object* backup; } ;
struct TYPE_8__ {TYPE_1__ res; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct vmw_private*,struct vmw_buffer_object*,int) ; 
 TYPE_5__* FUNC2 (TYPE_4__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 struct vmw_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vmw_framebuffer *vfb)
{
	struct vmw_private *dev_priv = FUNC4(vfb->base.dev);
	struct vmw_buffer_object *buf;

	buf = vfb->bo ?  FUNC2(&vfb->base)->buffer :
		FUNC3(&vfb->base)->surface->res.backup;

	if (FUNC0(!buf))
		return 0;

	return FUNC1(dev_priv, buf, false);
}