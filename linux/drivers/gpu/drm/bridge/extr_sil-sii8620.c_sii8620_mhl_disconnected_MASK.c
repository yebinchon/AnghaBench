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
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CBUS_MSC_COMPAT_CTRL_XDEVCAP_EN ; 
 int /*<<< orphan*/  REG_CBUS_MSC_COMPAT_CTRL ; 
 int /*<<< orphan*/  REG_DISC_CTRL4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VAL_PUP_20K ; 
 int /*<<< orphan*/  VAL_PUP_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx)
{
	FUNC2(ctx,
		REG_DISC_CTRL4, FUNC0(VAL_PUP_OFF, VAL_PUP_20K),
		REG_CBUS_MSC_COMPAT_CTRL,
			BIT_CBUS_MSC_COMPAT_CTRL_XDEVCAP_EN
	);
	FUNC1(ctx);
}