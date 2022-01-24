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
struct vc4_txp {int dummy; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXP_ABORT ; 
 int TXP_BUSY ; 
 int /*<<< orphan*/  TXP_DST_CTRL ; 
 int /*<<< orphan*/  TXP_POWERDOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct vc4_txp* FUNC3 (struct drm_encoder*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct drm_encoder *encoder)
{
	struct vc4_txp *txp = FUNC3(encoder);

	if (FUNC0(TXP_DST_CTRL) & TXP_BUSY) {
		unsigned long timeout = jiffies + FUNC4(1000);

		FUNC1(TXP_DST_CTRL, TXP_ABORT);

		while (FUNC0(TXP_DST_CTRL) & TXP_BUSY &&
		       FUNC5(jiffies, timeout))
			;

		FUNC2(FUNC0(TXP_DST_CTRL) & TXP_BUSY);
	}

	FUNC1(TXP_DST_CTRL, TXP_POWERDOWN);
}