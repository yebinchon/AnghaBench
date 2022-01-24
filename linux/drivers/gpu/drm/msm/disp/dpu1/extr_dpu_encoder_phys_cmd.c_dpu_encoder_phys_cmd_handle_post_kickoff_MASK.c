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
struct dpu_encoder_phys {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys*,int) ; 

__attribute__((used)) static void FUNC1(
		struct dpu_encoder_phys *phys_enc)
{
	/**
	 * re-enable external TE, either for the first time after enabling
	 * or if disabled for Autorefresh
	 */
	FUNC0(phys_enc, true);
}