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
struct dce_watermarks {int dummy; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  mmDPGV0_PIPE_URGENCY_CONTROL ; 
 int /*<<< orphan*/  mmDPGV0_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dce_watermarks,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(
	const struct dc_context *ctx,
	struct dce_watermarks marks_low,
	uint32_t total_dest_line_time_ns)
{
	FUNC0(
		ctx,
		mmDPGV0_PIPE_URGENCY_CONTROL,
		mmDPGV0_WATERMARK_MASK_CONTROL,
		marks_low,
		total_dest_line_time_ns);
}