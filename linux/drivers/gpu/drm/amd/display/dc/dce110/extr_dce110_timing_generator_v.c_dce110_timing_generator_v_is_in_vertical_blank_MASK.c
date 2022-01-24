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
typedef  int uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_STATUS ; 
 int /*<<< orphan*/  CRTC_V_BLANK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mmCRTCV_STATUS ; 

__attribute__((used)) static bool FUNC2(
		struct timing_generator *tg)
{
	uint32_t addr = 0;
	uint32_t value = 0;
	uint32_t field = 0;

	addr = mmCRTCV_STATUS;
	value = FUNC0(tg->ctx, addr);
	field = FUNC1(value, CRTCV_STATUS, CRTC_V_BLANK);
	return field == 1;
}