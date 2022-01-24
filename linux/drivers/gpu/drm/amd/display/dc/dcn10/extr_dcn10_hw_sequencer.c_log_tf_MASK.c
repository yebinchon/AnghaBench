#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_3__* blue; TYPE_2__* green; TYPE_1__* red; } ;
struct dc_transfer_func {TYPE_4__ tf_pts; } ;
struct dc_context {int /*<<< orphan*/  logger; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int MAX_NUM_HW_POINTS ; 

__attribute__((used)) static void FUNC4(struct dc_context *ctx,
				struct dc_transfer_func *tf, uint32_t hw_points_num)
{
	// DC_LOG_GAMMA is default logging of all hw points
	// DC_LOG_ALL_GAMMA logs all points, not only hw points
	// DC_LOG_ALL_TF_POINTS logs all channels of the tf
	int i = 0;

	FUNC0(ctx->logger);
	FUNC3("Gamma Correction TF");
	FUNC1("Logging all tf points...");
	FUNC2("Logging all channels...");

	for (i = 0; i < hw_points_num; i++) {
		FUNC3("R\t%d\t%llu\n", i, tf->tf_pts.red[i].value);
		FUNC2("G\t%d\t%llu\n", i, tf->tf_pts.green[i].value);
		FUNC2("B\t%d\t%llu\n", i, tf->tf_pts.blue[i].value);
	}

	for (i = hw_points_num; i < MAX_NUM_HW_POINTS; i++) {
		FUNC1("R\t%d\t%llu\n", i, tf->tf_pts.red[i].value);
		FUNC2("G\t%d\t%llu\n", i, tf->tf_pts.green[i].value);
		FUNC2("B\t%d\t%llu\n", i, tf->tf_pts.blue[i].value);
	}
}