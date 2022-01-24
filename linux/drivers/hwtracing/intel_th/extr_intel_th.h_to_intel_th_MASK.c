#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; } ;
struct intel_th {int dummy; } ;

/* Variables and functions */
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ FUNC0 (int) ; 
 struct intel_th* FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_th_device* FUNC2 (struct intel_th_device*) ; 

__attribute__((used)) static inline struct intel_th *FUNC3(struct intel_th_device *thdev)
{
	if (thdev->type == INTEL_TH_OUTPUT)
		thdev = FUNC2(thdev);

	if (FUNC0(!thdev || thdev->type == INTEL_TH_OUTPUT))
		return NULL;

	return FUNC1(thdev->dev.parent);
}