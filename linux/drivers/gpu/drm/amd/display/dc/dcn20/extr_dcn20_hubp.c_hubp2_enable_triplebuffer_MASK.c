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
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCSURF_FLIP_CONTROL2 ; 
 int /*<<< orphan*/  DC_TRIPLEBUFFER_DISABLE ; 
 int /*<<< orphan*/  DC_TRIPLEBUFFER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SURFACE_TRIPLE_BUFFER_ENABLE ; 
 struct dcn20_hubp* FUNC2 (struct hubp*) ; 

void FUNC3(
	struct hubp *hubp,
	bool enable)
{
	struct dcn20_hubp *hubp2 = FUNC2(hubp);
	uint32_t triple_buffer_en = 0;
	bool tri_buffer_en;

	FUNC0(DCSURF_FLIP_CONTROL2, SURFACE_TRIPLE_BUFFER_ENABLE, &triple_buffer_en);
	tri_buffer_en = (triple_buffer_en == 1);
	if (tri_buffer_en != enable) {
		FUNC1(DCSURF_FLIP_CONTROL2,
			SURFACE_TRIPLE_BUFFER_ENABLE, enable ? DC_TRIPLEBUFFER_ENABLE : DC_TRIPLEBUFFER_DISABLE);
	}
}