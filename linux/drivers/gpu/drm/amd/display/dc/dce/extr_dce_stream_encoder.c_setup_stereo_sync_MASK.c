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
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {int dummy; } ;

/* Variables and functions */
 struct dce110_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 int /*<<< orphan*/  DIG_FE_CNTL ; 
 int /*<<< orphan*/  DIG_STEREOSYNC_GATE_EN ; 
 int /*<<< orphan*/  DIG_STEREOSYNC_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(
	struct stream_encoder *enc,
	int tg_inst, bool enable)
{
	struct dce110_stream_encoder *enc110 = FUNC0(enc);
	FUNC1(DIG_FE_CNTL, DIG_STEREOSYNC_SELECT, tg_inst);
	FUNC1(DIG_FE_CNTL, DIG_STEREOSYNC_GATE_EN, !enable);
}