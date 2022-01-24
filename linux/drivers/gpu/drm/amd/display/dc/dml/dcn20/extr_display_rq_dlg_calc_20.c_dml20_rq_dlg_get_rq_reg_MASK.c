#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct display_mode_lib {int dummy; } ;
typedef  int /*<<< orphan*/  display_rq_regs_st ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ display_rq_params_st ;
struct TYPE_7__ {int /*<<< orphan*/  src; } ;
typedef  TYPE_2__ display_pipe_params_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct display_mode_lib*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct display_mode_lib*,int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct display_mode_lib*,int /*<<< orphan*/ ) ; 

void FUNC4(struct display_mode_lib *mode_lib,
		display_rq_regs_st *rq_regs,
		const display_pipe_params_st pipe_param)
{
	display_rq_params_st rq_param = {0};

	FUNC2(rq_regs, 0, sizeof(*rq_regs));
	FUNC0(mode_lib, &rq_param, pipe_param.src);
	FUNC1(mode_lib, rq_regs, rq_param);

	FUNC3(mode_lib, *rq_regs);
}