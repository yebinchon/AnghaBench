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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_DOUBLE_BUFFER_CONTROL ; 
 int /*<<< orphan*/  OTG_RANGE_TIMING_DBUF_UPDATE_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct timing_generator *optc, bool enable)
{
	struct optc *optc1 = FUNC0(optc);

	uint32_t blank_data_double_buffer_enable = enable ? 1 : 0;

	FUNC1(OTG_DOUBLE_BUFFER_CONTROL,
		OTG_RANGE_TIMING_DBUF_UPDATE_MODE, blank_data_double_buffer_enable);
}