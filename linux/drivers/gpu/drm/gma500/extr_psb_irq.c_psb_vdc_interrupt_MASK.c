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
typedef  int uint32_t ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int _PSB_IRQ_ASLE ; 
 int _PSB_VSYNC_PIPEA_FLAG ; 
 int _PSB_VSYNC_PIPEB_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev, uint32_t vdc_stat)
{
	if (vdc_stat & _PSB_IRQ_ASLE)
		FUNC1(dev);

	if (vdc_stat & _PSB_VSYNC_PIPEA_FLAG)
		FUNC0(dev, 0);

	if (vdc_stat & _PSB_VSYNC_PIPEB_FLAG)
		FUNC0(dev, 1);
}