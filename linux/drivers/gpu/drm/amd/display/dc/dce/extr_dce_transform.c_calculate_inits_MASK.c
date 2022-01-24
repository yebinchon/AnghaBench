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
struct TYPE_8__ {int fraction; void* integer; } ;
struct TYPE_5__ {int fraction; void* integer; } ;
struct scl_ratios_inits {int h_int_scale_ratio; int v_int_scale_ratio; TYPE_4__ v_init; TYPE_1__ h_init; } ;
struct TYPE_7__ {scalar_t__ v_taps; scalar_t__ h_taps; } ;
struct TYPE_6__ {int /*<<< orphan*/  vert; int /*<<< orphan*/  horz; } ;
struct scaler_data {TYPE_3__ taps; TYPE_2__ ratios; } ;
struct fixed31_32 {int dummy; } ;
struct dce_transform {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct fixed31_32) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
	struct dce_transform *xfm_dce,
	const struct scaler_data *data,
	struct scl_ratios_inits *inits)
{
	struct fixed31_32 h_init;
	struct fixed31_32 v_init;

	inits->h_int_scale_ratio =
		FUNC5(data->ratios.horz) << 5;
	inits->v_int_scale_ratio =
		FUNC5(data->ratios.vert) << 5;

	h_init =
		FUNC1(
			FUNC0(
				data->ratios.horz,
				FUNC3(data->taps.h_taps + 1)),
				2);
	inits->h_init.integer = FUNC2(h_init);
	inits->h_init.fraction = FUNC4(h_init) << 5;

	v_init =
		FUNC1(
			FUNC0(
				data->ratios.vert,
				FUNC3(data->taps.v_taps + 1)),
				2);
	inits->v_init.integer = FUNC2(v_init);
	inits->v_init.fraction = FUNC4(v_init) << 5;
}