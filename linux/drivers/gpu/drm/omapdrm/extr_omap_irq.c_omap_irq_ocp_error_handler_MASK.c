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
typedef  int u32 ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DISPC_IRQ_OCP_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(struct drm_device *dev,
	u32 irqstatus)
{
	if (!(irqstatus & DISPC_IRQ_OCP_ERR))
		return;

	FUNC0(dev->dev, "OCP error\n");
}