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
typedef  int uint8_t ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NV_VIO_SR_CLOCK_INDEX ; 

__attribute__((used)) static inline void FUNC4(struct drm_device *dev, int head, bool protect)
{
	uint8_t seq1 = FUNC0(dev, head, NV_VIO_SR_CLOCK_INDEX);

	if (protect) {
		FUNC2(dev, head, true);
		FUNC3(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 | 0x20);
	} else {
		/* Reenable sequencer, then turn on screen */
		FUNC3(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 & ~0x20);   /* reenable display */
		FUNC2(dev, head, false);
	}
	FUNC1(dev, head, protect);
}