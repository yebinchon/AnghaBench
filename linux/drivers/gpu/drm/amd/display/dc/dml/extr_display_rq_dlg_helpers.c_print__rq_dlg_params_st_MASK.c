#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct display_mode_lib {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rq_c; int /*<<< orphan*/  rq_l; } ;
typedef  TYPE_1__ display_rq_dlg_params_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct display_mode_lib*,int /*<<< orphan*/ ) ; 

void FUNC2(struct display_mode_lib *mode_lib, display_rq_dlg_params_st rq_dlg_param)
{
	FUNC0("DML_RQ_DLG_CALC: =====================================\n");
	FUNC0("DML_RQ_DLG_CALC: DISPLAY_RQ_DLG_PARAM_ST\n");
	FUNC0("DML_RQ_DLG_CALC:  <LUMA>\n");
	FUNC1(mode_lib, rq_dlg_param.rq_l);
	FUNC0("DML_RQ_DLG_CALC:  <CHROMA>\n");
	FUNC1(mode_lib, rq_dlg_param.rq_c);
	FUNC0("DML_RQ_DLG_CALC: =====================================\n");
}