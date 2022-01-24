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
struct dc_sink_init_data {int /*<<< orphan*/  sink_signal; TYPE_1__* link; int /*<<< orphan*/  member_0; } ;
struct dc_sink {int /*<<< orphan*/  sink_signal; } ;
struct amdgpu_dm_connector {TYPE_1__* dc_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  connector_signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SIGNAL_TYPE_VIRTUAL ; 
 struct dc_sink* FUNC1 (struct dc_sink_init_data*) ; 

__attribute__((used)) static struct dc_sink *
FUNC2(struct amdgpu_dm_connector *aconnector)
{
	struct dc_sink_init_data sink_init_data = { 0 };
	struct dc_sink *sink = NULL;
	sink_init_data.link = aconnector->dc_link;
	sink_init_data.sink_signal = aconnector->dc_link->connector_signal;

	sink = FUNC1(&sink_init_data);
	if (!sink) {
		FUNC0("Failed to create sink!\n");
		return NULL;
	}
	sink->sink_signal = SIGNAL_TYPE_VIRTUAL;

	return sink;
}