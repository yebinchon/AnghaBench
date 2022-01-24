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
typedef  int /*<<< orphan*/  uint32_t ;
struct mem_input {int /*<<< orphan*/  ctx; } ;
struct dce_watermarks {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dce_watermarks) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dce_watermarks) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dce_watermarks,int /*<<< orphan*/ ) ; 

void FUNC3(
	struct mem_input *mem_input,
	struct dce_watermarks nbp,
	struct dce_watermarks stutter,
	struct dce_watermarks urgent,
	uint32_t total_dest_line_time_ns)
{
	FUNC2(
		mem_input->ctx,
		urgent,
		total_dest_line_time_ns);

	FUNC0(
		mem_input->ctx,
		nbp);

	FUNC1(
		mem_input->ctx,
		stutter);
}