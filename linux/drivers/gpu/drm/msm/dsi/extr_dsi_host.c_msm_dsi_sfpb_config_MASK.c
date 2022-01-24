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
struct msm_dsi_host {int /*<<< orphan*/  sfpb; } ;
typedef  enum sfpb_ahb_arb_master_port_en { ____Placeholder_sfpb_ahb_arb_master_port_en } sfpb_ahb_arb_master_port_en ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SFPB_GPREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SFPB_GPREG_MASTER_PORT_EN__MASK ; 
 int SFPB_MASTER_PORT_DISABLE ; 
 int SFPB_MASTER_PORT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct msm_dsi_host *msm_host, bool enable)
{
	enum sfpb_ahb_arb_master_port_en en;

	if (!msm_host->sfpb)
		return;

	en = enable ? SFPB_MASTER_PORT_ENABLE : SFPB_MASTER_PORT_DISABLE;

	FUNC1(msm_host->sfpb, REG_SFPB_GPREG,
			SFPB_GPREG_MASTER_PORT_EN__MASK,
			FUNC0(en));
}