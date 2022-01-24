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
typedef  scalar_t__ u32 ;
struct intel_guc {int /*<<< orphan*/  shared_data; TYPE_1__* execbuf_client; } ;
struct intel_engine_cs {scalar_t__ guc_id; } ;
struct TYPE_2__ {scalar_t__ stage_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ INTEL_GUC_ACTION_REQUEST_ENGINE_RESET ; 
 scalar_t__ FUNC2 (struct intel_guc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_guc*,scalar_t__*,int /*<<< orphan*/ ) ; 

int FUNC4(struct intel_guc *guc,
			   struct intel_engine_cs *engine)
{
	u32 data[7];

	FUNC1(!guc->execbuf_client);

	data[0] = INTEL_GUC_ACTION_REQUEST_ENGINE_RESET;
	data[1] = engine->guc_id;
	data[2] = 0;
	data[3] = 0;
	data[4] = 0;
	data[5] = guc->execbuf_client->stage_id;
	data[6] = FUNC2(guc, guc->shared_data);

	return FUNC3(guc, data, FUNC0(data));
}