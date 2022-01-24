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
struct dcn10_stream_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_AUDIO_CLOCK_EN ; 
 int /*<<< orphan*/  AFMT_CNTL ; 
 struct dcn10_stream_encoder* FUNC0 (struct stream_encoder*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(
	struct stream_encoder *enc,
	bool enable)
{
	struct dcn10_stream_encoder *enc1 = FUNC0(enc);

	if (FUNC1(AFMT_CNTL) == 0)
		return;   /* DCE8/10 does not have this register */

	FUNC2(AFMT_CNTL, AFMT_AUDIO_CLOCK_EN, !!enable);

	/* wait for AFMT clock to turn on,
	 * expectation: this should complete in 1-2 reads
	 *
	 * REG_WAIT(AFMT_CNTL, AFMT_AUDIO_CLOCK_ON, !!enable, 1, 10);
	 *
	 * TODO: wait for clock_on does not work well. May need HW
	 * program sequence. But audio seems work normally even without wait
	 * for clock_on status change
	 */
}