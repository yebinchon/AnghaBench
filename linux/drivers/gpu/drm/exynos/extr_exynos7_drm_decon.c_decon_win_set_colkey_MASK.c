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
struct decon_context {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int WxKEYCON0_DIRCON ; 
 unsigned int WxKEYCON0_KEYBL_EN ; 
 unsigned int WxKEYCON0_KEYEN_F ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct decon_context *ctx, unsigned int win)
{
	unsigned int keycon0 = 0, keycon1 = 0;

	keycon0 = ~(WxKEYCON0_KEYBL_EN | WxKEYCON0_KEYEN_F |
			WxKEYCON0_DIRCON) | FUNC2(0);

	keycon1 = FUNC3(0xffffffff);

	FUNC4(keycon0, ctx->regs + FUNC0(win));
	FUNC4(keycon1, ctx->regs + FUNC1(win));
}