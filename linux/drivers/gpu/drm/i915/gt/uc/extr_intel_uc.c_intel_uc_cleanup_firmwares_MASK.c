#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw; } ;
struct intel_uc {TYPE_2__ guc; TYPE_1__ huc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uc*) ; 
 scalar_t__ FUNC2 (struct intel_uc*) ; 

void FUNC3(struct intel_uc *uc)
{
	if (!FUNC1(uc))
		return;

	if (FUNC2(uc))
		FUNC0(&uc->huc.fw);

	FUNC0(&uc->guc.fw);
}