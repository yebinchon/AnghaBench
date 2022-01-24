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
struct mixer_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXR_STATUS ; 
 int MXR_STATUS_REG_IDLE ; 
 int /*<<< orphan*/  MXR_STATUS_REG_RUN ; 
 int FUNC0 (struct mixer_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mixer_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct mixer_context *ctx)
{
	int timeout = 20;

	FUNC1(ctx, MXR_STATUS, 0, MXR_STATUS_REG_RUN);

	while (!(FUNC0(ctx, MXR_STATUS) & MXR_STATUS_REG_IDLE) &&
			--timeout)
		FUNC2(10000, 12000);
}