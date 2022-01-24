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
struct dce_hwseq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN0_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN0_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN10_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN11_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN16_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN16_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN17_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN17_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN18_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN18_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN19_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN19_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN1_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN1_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN20_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN20_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN21_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN21_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN2_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN2_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN3_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN3_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN4_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN4_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN5_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN5_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN6_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN6_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN7_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN7_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN8_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN8_POWER_FORCEON ; 
 int /*<<< orphan*/  DOMAIN9_PG_CONFIG ; 
 int /*<<< orphan*/  DOMAIN9_POWER_FORCEON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(
	struct dce_hwseq *hws,
	bool enable)
{
	bool force_on = 1; /* disable power gating */

	if (enable)
		force_on = 0;

	/* DCHUBP0/1/2/3/4/5 */
	FUNC1(DOMAIN0_PG_CONFIG, DOMAIN0_POWER_FORCEON, force_on);
	FUNC1(DOMAIN2_PG_CONFIG, DOMAIN2_POWER_FORCEON, force_on);
	FUNC1(DOMAIN4_PG_CONFIG, DOMAIN4_POWER_FORCEON, force_on);
	FUNC1(DOMAIN6_PG_CONFIG, DOMAIN6_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN8_PG_CONFIG))
		FUNC1(DOMAIN8_PG_CONFIG, DOMAIN8_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN10_PG_CONFIG))
		FUNC1(DOMAIN10_PG_CONFIG, DOMAIN8_POWER_FORCEON, force_on);

	/* DPP0/1/2/3/4/5 */
	FUNC1(DOMAIN1_PG_CONFIG, DOMAIN1_POWER_FORCEON, force_on);
	FUNC1(DOMAIN3_PG_CONFIG, DOMAIN3_POWER_FORCEON, force_on);
	FUNC1(DOMAIN5_PG_CONFIG, DOMAIN5_POWER_FORCEON, force_on);
	FUNC1(DOMAIN7_PG_CONFIG, DOMAIN7_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN9_PG_CONFIG))
		FUNC1(DOMAIN9_PG_CONFIG, DOMAIN9_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN11_PG_CONFIG))
		FUNC1(DOMAIN11_PG_CONFIG, DOMAIN9_POWER_FORCEON, force_on);

	/* DCS0/1/2/3/4/5 */
	FUNC1(DOMAIN16_PG_CONFIG, DOMAIN16_POWER_FORCEON, force_on);
	FUNC1(DOMAIN17_PG_CONFIG, DOMAIN17_POWER_FORCEON, force_on);
	FUNC1(DOMAIN18_PG_CONFIG, DOMAIN18_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN19_PG_CONFIG))
		FUNC1(DOMAIN19_PG_CONFIG, DOMAIN19_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN20_PG_CONFIG))
		FUNC1(DOMAIN20_PG_CONFIG, DOMAIN20_POWER_FORCEON, force_on);
	if (FUNC0(DOMAIN21_PG_CONFIG))
		FUNC1(DOMAIN21_PG_CONFIG, DOMAIN21_POWER_FORCEON, force_on);
}