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
struct drxd_state {scalar_t__ type_A; } ;

/* Variables and functions */
 int DRX_I2C_BROADCAST ; 
 int /*<<< orphan*/  EC_OC_REG_OC_MON_SIO__A ; 
 int /*<<< orphan*/  HI_COMM_MB__A ; 
 int /*<<< orphan*/  FUNC0 (struct drxd_state*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct drxd_state *state)
{
	if (state->type_A) {
		/* disable? monitor bus observe @ EC_OC */
		FUNC0(state, EC_OC_REG_OC_MON_SIO__A, 0x0000, 0x0000);
	}

	/* do inverse broadcast, followed by explicit write to HI */
	FUNC0(state, HI_COMM_MB__A, 0x0000, DRX_I2C_BROADCAST);
	FUNC0(state, HI_COMM_MB__A, 0x0000, 0x0000);
	return 0;
}