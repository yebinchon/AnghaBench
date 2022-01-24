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
struct mdp5_kms {scalar_t__ lut_clk; scalar_t__ core_clk; scalar_t__ axi_clk; scalar_t__ ahb_clk; int /*<<< orphan*/  enable_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

int FUNC2(struct mdp5_kms *mdp5_kms)
{
	FUNC0("");

	mdp5_kms->enable_count++;

	FUNC1(mdp5_kms->ahb_clk);
	FUNC1(mdp5_kms->axi_clk);
	FUNC1(mdp5_kms->core_clk);
	if (mdp5_kms->lut_clk)
		FUNC1(mdp5_kms->lut_clk);

	return 0;
}