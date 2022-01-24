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
struct gm12u320_device {int dummy; } ;
struct drm_device {struct gm12u320_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gm12u320_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct gm12u320_device*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct gm12u320_device *gm12u320 = dev->dev_private;

	FUNC2(gm12u320);
	FUNC1(dev);
	FUNC0(dev);
	FUNC3(gm12u320);
}