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
struct hdlcd_drm_private {int dummy; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLCD_REG_INT_CLEAR ; 
 int /*<<< orphan*/  HDLCD_REG_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct hdlcd_drm_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct drm_device *drm)
{
	struct hdlcd_drm_private *hdlcd = drm->dev_private;
	/* Ensure interrupts are disabled */
	FUNC0(hdlcd, HDLCD_REG_INT_MASK, 0);
	FUNC0(hdlcd, HDLCD_REG_INT_CLEAR, ~0);
}