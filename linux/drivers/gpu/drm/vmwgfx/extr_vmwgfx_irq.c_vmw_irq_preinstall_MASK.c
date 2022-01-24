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
struct vmw_private {scalar_t__ io_start; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VMWGFX_IRQSTATUS_PORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vmw_private* FUNC2 (struct drm_device*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev)
{
	struct vmw_private *dev_priv = FUNC2(dev);
	uint32_t status;

	status = FUNC0(dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
	FUNC1(status, dev_priv->io_start + VMWGFX_IRQSTATUS_PORT);
}