#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dpp {TYPE_3__* ctx; } ;
struct dcn20_dpp {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {scalar_t__ cm_in_bypass; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_BYPASS ; 
 int /*<<< orphan*/  CM_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 

__attribute__((used)) static void FUNC2(
		struct dpp *dpp_base)
{
	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	unsigned int cm_bypass_mode = 0;
	//Temp, put CM in bypass mode
	if (dpp_base->ctx->dc->debug.cm_in_bypass)
		cm_bypass_mode = 1;

	FUNC0(CM_CONTROL, CM_BYPASS, cm_bypass_mode);
}