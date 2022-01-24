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
 int /*<<< orphan*/  NV_PTV_TV_DATA ; 
 int /*<<< orphan*/  NV_PTV_TV_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct drm_device *dev, uint8_t reg,
				   uint8_t val)
{
	FUNC0(dev, NV_PTV_TV_INDEX, reg);
	FUNC0(dev, NV_PTV_TV_DATA, val);
}