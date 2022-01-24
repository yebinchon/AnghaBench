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
typedef  int /*<<< orphan*/  u32 ;
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPU_LATEST_FLUSH_ID ; 
 int /*<<< orphan*/  HW_FEATURE_FLUSH_REDUCTION ; 
 int /*<<< orphan*/  FUNC0 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ) ; 

u32 FUNC2(struct panfrost_device *pfdev)
{
	if (FUNC1(pfdev, HW_FEATURE_FLUSH_REDUCTION))
		return FUNC0(pfdev, GPU_LATEST_FLUSH_ID);
	return 0;
}