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
typedef  int u8 ;
struct sii8620 {int /*<<< orphan*/  mt_state; } ;

/* Variables and functions */
 int BIT_INTR9_DEVCAP_DONE ; 
 int /*<<< orphan*/  MT_STATE_DONE ; 
 int /*<<< orphan*/  REG_INTR9 ; 
 int FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	u8 stat = FUNC0(ctx, REG_INTR9);

	FUNC1(ctx, REG_INTR9, stat);

	if (stat & BIT_INTR9_DEVCAP_DONE)
		ctx->mt_state = MT_STATE_DONE;
}