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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PRMVIO_GRX ; 
 int /*<<< orphan*/  NV_PRMVIO_GX ; 

void
FUNC1(struct drm_device *dev, int head, uint8_t index, uint8_t value)
{
	FUNC0(dev, head, NV_PRMVIO_GRX, index);
	FUNC0(dev, head, NV_PRMVIO_GX, value);
}